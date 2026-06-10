using Microsoft.AspNetCore.Mvc;

namespace WatsunDrugstore.Controllers
{
    public class OrdersController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
