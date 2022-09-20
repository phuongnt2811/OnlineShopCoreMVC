using Microsoft.AspNetCore.Mvc;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Controllers
{
    public class OrderController : Controller
    {
        public readonly IOrderService service;
        public OrderController(IOrderService service)
        {
            this.service = service;
        }

        public IActionResult Index(int page, int size, string? table_search)
        {
            if (page == 0)
                page = 1;

            size = 10;
            var totalItem = service.getAll().Count();
            var totalPage = (int)Math.Ceiling((decimal)totalItem / (Decimal)size);
            var pages = new Pages(page, size, totalItem);
            ViewBag.table_search = table_search;
            ViewBag.totalPage = totalPage;
            var listOrder = service.searching(page, size, table_search);
            return View("Index", listOrder);
        }

    }
}
