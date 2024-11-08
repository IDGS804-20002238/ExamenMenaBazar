using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ExamenMenaBazar.Models
{
    public partial class BazarUniversalContext : DbContext
    {
        public BazarUniversalContext()
        {
        }

        public BazarUniversalContext(DbContextOptions<BazarUniversalContext> options)
            : base(options)
        {
        }

        public DbSet<ImagenesModel> Imagenes { get; set; }
        public DbSet<ProductosModel> Productos { get; set; }
        public DbSet<VentasModel> ventas { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ImagenesModel>(entity =>
            {
                entity.HasKey(e => e.imagen_id)
                    .HasName("PK__Images__7516F4F2D3A3D3A3");

                entity.Property(e => e.imagen_id).HasColumnName("imagen_id"); 

                entity.Property(e => e.imagen_url)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("imagen_url"); 

                entity.Property(e => e.producto_id).HasColumnName("producto_id"); 
            });

            modelBuilder.Entity<ProductosModel>(entity =>
            {
                entity.HasKey(e => e.producto_id)
                    .HasName("PK__Items__3214EC07D3A3D3A3");

                entity.Property(e => e.producto_id)
                    .HasColumnName("producto_id");

                entity.Property(e => e.titulo)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.descripcion_producto)
                    .IsRequired()
                    .IsUnicode(false);

                entity.Property(e => e.precio)
                    .HasColumnType("decimal(10, 2)");

                entity.Property(e => e.descuento)
                    .HasColumnType("decimal(5, 2)");

                entity.Property(e => e.calificacion)
                    .HasColumnType("decimal(3, 2)");

                entity.Property(e => e.Stock)
                    .HasColumnType("int");

                entity.Property(e => e.Brand)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.categoria)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Thumbnail)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VentasModel>(entity =>
            {
                entity.HasKey(e => e.venta_id)
                    .HasName("PK__Sales__venta_id");

                entity.Property(e => e.venta_id).HasColumnName("venta_id");

                entity.Property(e => e.titulo_ventas)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false)
                    .HasColumnName("titulo_ventas");

                entity.Property(e => e.precio_venta)
                    .HasColumnType("decimal(10, 2)")
                    .HasColumnName("precio_venta");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
