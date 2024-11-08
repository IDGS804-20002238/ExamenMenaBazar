using ExamenMenaBazar.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BazarUniversalApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VentasController : Controller
    {
        private readonly BazarUniversalContext _context;

        public VentasController(BazarUniversalContext context)
        {
            _context = context;
        }

        // GET: api/sales
        [HttpGet("ventas")]
        public async Task<ActionResult<IEnumerable<VentasModel>>> GetSales()
        {
            return await _context.ventas.ToListAsync();
        }

        // PUSH: api/sales/
        [HttpPost("ventas")]
        public async Task<ActionResult<VentasModel>> PostSales(VentasModel ventas)
        {
            _context.ventas.Add(ventas);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetSales", new { id = ventas.venta_id }, ventas);
        }


    }
}
