using BazarUniversalApi.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BazarUniversalApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BazarController : Controller
    {
        private readonly BazarContext _context;

        public BazarController(BazarContext context)
        {
            _context = context;
        }

        // GET: api/items
        [HttpGet("items")]
        public async Task<ActionResult<IEnumerable<ItemWithImagesModel>>> GetItemsWithImages()
        {
            var itemsWithImages = await _context.Items
                .Select(item => new ItemWithImagesModel
                {
                    Id = item.Id,
                    Title = item.Title,
                    Description = item.Description,
                    Price = item.Price,
                    DiscountPercentage = item.DiscountPercentage,
                    Rating = item.Rating,
                    Stock = item.Stock,
                    Brand = item.Brand,
                    Category = item.Category,
                    Thumbnail = item.Thumbnail,
                    Images = _context.Images
                        .Where(image => image.ItemId == item.Id)
                        .Select(image => image.ImageUrl)
                        .ToList()
                })
                .ToListAsync();

            return Ok(itemsWithImages);
        }

        // GET: api/items/{id}
        [HttpGet("items/{id}")]
        public async Task<ActionResult<ItemWithImagesModel>> GetItemWithImages(int id)
        {
            var item = await _context.Items
                .Where(i => i.Id == id)
                .Select(i => new ItemWithImagesModel
                {
                    Id = i.Id,
                    Title = i.Title,
                    Description = i.Description,
                    Price = i.Price,
                    DiscountPercentage = i.DiscountPercentage,
                    Rating = i.Rating,
                    Stock = i.Stock,
                    Brand = i.Brand,
                    Category = i.Category,
                    Thumbnail = i.Thumbnail,
                    Images = _context.Images
                        .Where(img => img.ItemId == i.Id)
                        .Select(img => img.ImageUrl)
                        .ToList()
                })
                .FirstOrDefaultAsync();

            if (item == null)
            {
                return NotFound();
            }

            return Ok(item);
        }


    }
}
