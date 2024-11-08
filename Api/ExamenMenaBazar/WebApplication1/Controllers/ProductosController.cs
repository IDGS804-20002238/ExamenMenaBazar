using ExamenMenaBazar.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ExamenMenaBazar.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductosController : Controller
    {
        private readonly BazarUniversalContext _context;

        public ProductosController(BazarUniversalContext context)
        {
            _context = context;
        }

        // GET: api/items
        [HttpGet("productos")]
        public async Task<ActionResult<IEnumerable<ProductosImagenModel>>> GetProductosImagen()
        {
            var productosImagenModel = await _context.Productos
                .Select(item => new ProductosImagenModel
                {
                    producto_id = item.producto_id,
                    titulo = item.titulo,
                    descripcion_producto = item.descripcion_producto,
                    precio = item.precio,
                    descuento = item.descuento,
                    calificacion = item.calificacion,
                    Stock = item.Stock,
                    Brand = item.Brand,
                    categoria = item.categoria,
                    Thumbnail = item.Thumbnail,
                    Images = _context.Imagenes
                        .Where(image => image.producto_id == item.producto_id)
                        .Select(image => image.imagen_url)
                        .ToList()
                })
                .ToListAsync();

            return Ok(productosImagenModel);
        }

        // GET: api/items/{id}
        [HttpGet("productos/{id}")]
        public async Task<ActionResult<ProductosImagenModel>> GetProductosImagen(int id)
        {
            var producto = await _context.Productos
                .Where(i => i.producto_id == id)
                .Select(i => new ProductosImagenModel
                {
                    producto_id = i.producto_id,
                    titulo = i.titulo,
                    descripcion_producto = i.descripcion_producto,
                    precio = i.precio,
                    descuento = i.descuento,
                    calificacion = i.calificacion,
                    Stock = i.Stock,
                    Brand = i.Brand,
                    categoria = i.categoria,
                    Thumbnail = i.Thumbnail,
                    Images = _context.Imagenes
                        .Where(img => img.producto_id == i.producto_id)
                        .Select(img => img.imagen_url)
                        .ToList()
                })
                .FirstOrDefaultAsync();

            if (producto == null)
            {
                return NotFound();
            }

            return Ok(producto);
        }


    }
}
