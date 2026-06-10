using Microsoft.AspNetCore.Mvc;

namespace WatsunDrugstore.Controllers
{
    public class CartController : Controller
    {
        public IActionResult ViewCart()
        {
            return View();
        }

        public IActionResult Checkout()
        {
            return View();
        }
    }
}
