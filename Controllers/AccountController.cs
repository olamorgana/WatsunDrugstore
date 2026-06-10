using Microsoft.AspNetCore.Mvc;

namespace WatsunDrugstore.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
