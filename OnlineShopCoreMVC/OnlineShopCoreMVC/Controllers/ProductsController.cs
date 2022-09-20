using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;
using System.Net;
using System.Net.WebSockets;
using System.Text.Encodings.Web;

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
            var totalItem = service.getAll().Count();
            var totalPage = (int)Math.Ceiling((decimal)totalItem / (Decimal)size);
            var pages = new Pages(page, size, totalItem);
            ViewBag.table_search = table_search;
            ViewBag.totalPage = totalPage;
            var listProduct = service.searching(page, size, table_search);
            return View("Index", listProduct);
        }
     
        public IActionResult Create()
        {
            ViewBag.Category = service.getAllCategory().Select(x=> x.category_name);
            ViewBag.category_id = new SelectList(service.getAllCategory(), "category_id", "category_name", service.getAllCategory().Select(x=> x.category_id));
            ViewBag.productStatus_id = new SelectList(service.getAllproductStatus(), "product_status_id", "product_status_name", service.getAllproductStatus().Select(x => x.product_status_name));
           
            return View("Create");
        }
        [HttpPost]
        public IActionResult Create(Product product)
        {
            ViewBag.Category = service.getAllCategory();
            service.Create(product);
            return RedirectToAction("Index");

        }
        public IActionResult Update(int? Id)
        {
           if(Id == null)
            {
                return NotFound();
            }else
            {
                ViewBag.category_id = new SelectList(service.getAllCategory(), "category_id", "category_name", service.getAllCategory().Select(x => x.category_id));
                ViewBag.productStatus_id = new SelectList(service.getAllproductStatus(), "product_status_id", "product_status_name", service.getAllproductStatus().Select(x => x.product_status_name));

                var product = service.getById(Id);
                if(product == null)
                {
                    return NotFound();
                }
                return View("Update", product);
            }
            return RedirectToAction("Index", "Products");
        }
        [HttpPost]
        public IActionResult Update(Product product)
        {
            service.Update(product);
            return RedirectToAction("Index", "Products");
        }
        [HttpGet]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            else
            {
                var product = service.getById(id);
                ViewBag.category_id = new SelectList(service.getAllCategory(), "category_id", "category_name", service.getAllCategory().Select(x => x.category_id));
                ViewBag.productStatus_id = new SelectList(service.getAllproductStatus(), "product_status_id", "product_status_name", service.getAllproductStatus().Select(x => x.product_status_name));
                ViewBag.Image = product.product_image;
                if (product == null)
                {
                    return NotFound();
                }
                return View("Delete", product);
            }
            return RedirectToAction("Index", "Products");
        }
        [HttpPost]
        public IActionResult Delete(Product product)
        {
              service.Delete(product);
            return RedirectToAction("Index", "Products");
        }

    }
}
