using Microsoft.AspNetCore.Mvc;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;
using System.Net.WebSockets;

namespace OnlineShopCoreMVC.Controllers
{
    public class ProductsController : Controller
    {
        public readonly IProductService service;
        public ProductsController(IProductService service)
        {
            this.service = service;
        }

        public IActionResult Index(int page, int size, string? table_search)
        {
            if (page == 0)
                page = 1;

            size = 10;
            var totalItem = service.getAllProducts().Count();
            var totalPage = (int)Math.Ceiling((decimal)totalItem / (Decimal)size);
            var pages = new Pages(page, size, totalItem);
            ViewBag.table_search = table_search;
            ViewBag.totalPage = totalPage;
            var listProduct = service.searching(page, size, table_search);
            return View(listProduct);

        }

        public IActionResult Create()
        {
            return View("Create");
        }
        [HttpPost]
        public IActionResult Create(Product product)
        {

            if (ModelState.IsValid)
            {
                service.CreateProduct(product);
                return View("Index");
            }
            else
            {
                return View(product);
            }

        }
    }
}
