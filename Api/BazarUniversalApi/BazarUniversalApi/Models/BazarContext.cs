using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace BazarUniversalApi.Models
{
    public partial class BazarContext : DbContext
    {
        public BazarContext()
        {
        }

        public BazarContext(DbContextOptions<BazarContext> options)
            : base(options)
        {
        }

        public DbSet<ImagesModel> Images { get; set; }
        public DbSet<ItemsModel> Items { get; set; }
        public DbSet<SalesModel> Sales { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ImagesModel>(entity =>
            {
                entity.HasKey(e => e.ImageId)
                    .HasName("PK__Images__7516F4F2D3A3D3A3");

                entity.Property(e => e.ImageId).HasColumnName("image_id"); // Ajuste al nombre correcto

                entity.Property(e => e.ImageUrl)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("image_url"); // Ajuste al nombre correcto

                entity.Property(e => e.ItemId).HasColumnName("item_id"); // Ajuste al nombre correcto
            });

            modelBuilder.Entity<ItemsModel>(entity =>
            {
                entity.HasKey(e => e.Id)
                    .HasName("PK__Items__3214EC07D3A3D3A3");

                entity.Property(e => e.Id)
                    .HasColumnName("id");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Description)
                    .IsRequired()
                    .IsUnicode(false);

                entity.Property(e => e.Price)
                    .HasColumnType("decimal(10, 2)");

                entity.Property(e => e.DiscountPercentage)
                    .HasColumnType("decimal(5, 2)");

                entity.Property(e => e.Rating)
                    .HasColumnType("decimal(3, 2)");

                entity.Property(e => e.Stock)
                    .HasColumnType("int");

                entity.Property(e => e.Brand)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Category)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Thumbnail)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<SalesModel>(entity =>
            {
                entity.HasKey(e => e.SaleId)
                    .HasName("PK__Sales__SaleID");

                entity.Property(e => e.SaleId).HasColumnName("sale_id");

                entity.Property(e => e.SalesTitle)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("sales_title");

                entity.Property(e => e.SalesPrice)
                    .HasColumnType("decimal(10, 2)")
                    .HasColumnName("sales_price");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
