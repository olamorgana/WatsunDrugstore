using Microsoft.AspNetCore.Mvc;

namespace WatsunDrugstore.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
