using BazarUniversalApi.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BazarUniversalApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SalesController : Controller
    {
        private readonly BazarContext _context;

        public SalesController(BazarContext context)
        {
            _context = context;
        }

        // GET: api/sales
        [HttpGet("sales")]
        public async Task<ActionResult<IEnumerable<SalesModel>>> GetSales()
        {
            return await _context.Sales.ToListAsync();
        }

        // PUSH: api/sales/
        [HttpPost("sales")]
        public async Task<ActionResult<SalesModel>> PostSales(SalesModel sales)
        {
            _context.Sales.Add(sales);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetSales", new { id = sales.SaleId }, sales);
        }


    }
}
