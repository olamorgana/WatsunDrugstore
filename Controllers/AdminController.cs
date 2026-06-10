using Microsoft.AspNetCore.Mvc;

namespace WatsunDrugstore.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
