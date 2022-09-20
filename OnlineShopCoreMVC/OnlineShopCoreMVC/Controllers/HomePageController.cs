using Microsoft.AspNetCore.Mvc;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Controllers
{
    public class HomePageController : Controller
    {
        private readonly IHomepageService service;
        public HomePageController(IHomepageService service)
        {
            this.service = service;
        }
        public IActionResult Index()
        {
            var list = service.getAll();
            return View("Index", list);
        }
       
    }
}
