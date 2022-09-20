using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Controllers
{
    public class CategoryController : Controller
    {
        public readonly ICategoryService service;
        public CategoryController(ICategoryService service)
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
            //var pages = new Pages(page, size, totalItem);
            ViewBag.table_search = table_search;
            ViewBag.totalPage = totalPage;
            var listcategory = service.searching(page, size, table_search);
            return View("Index",listcategory);
        }

        public IActionResult Create()
        {
           
            return View("Create");
        }
        [HttpPost]
        public IActionResult Create(Category category)
        {
          
            service.Create(category);
            return RedirectToAction("Index");

        }
        public IActionResult Update(int? Id)
        {
            if (Id == null)
            {
                return NotFound();
            }
            else
            {
              
                var category = service.getById(Id);
                if (category == null)
                {
                    return NotFound();
                }
                return View("Update", category);
            }
            return RedirectToAction("Index", "Category");
        }
        [HttpPost]
        public IActionResult Update(Category category)
        {
            service.Update(category);
            return RedirectToAction("Index", "Category");
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
                var category = service.getById(id);
               
                if (category == null)
                {
                    return NotFound();
                }
                return View("Delete", category);
            }
            return RedirectToAction("Index", "Products");
        }
        [HttpPost]
        public IActionResult Delete(Category category)
        {
            service.Delete(category);
            return RedirectToAction("Index", "Products");
        }

    }
}
