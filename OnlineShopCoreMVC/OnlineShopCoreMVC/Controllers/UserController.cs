using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Controllers
{
    public class UserController : Controller
    {
        private readonly IUserService service;
        public UserController(IUserService service)
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
            var listUser = service.searching(page, size, table_search);
            return View("Index", listUser);
        }

        public IActionResult Create()
        {
            ViewBag.Category = service.getAllRole().Select(x => x.role_name);
            ViewBag.role_id = new SelectList(service.getAllRole(), "role_id", "role_name", service.getAllRole().Select(x => x.role_id));

            return View("Create");
        }
        [HttpPost]
        public IActionResult Create(User user)
        {
            ViewBag.Category = service.getAllRole().Select(x => x.role_name);
            ViewBag.role_id = new SelectList(service.getAllRole(), "role_id", "role_name", service.getAllRole().Select(x => x.role_id));

            service.Create(user);
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
                //ViewBag.Role = service.getAllRole().Select(x => x.role_name);
                ViewBag.role_id = new SelectList(service.getAllRole(), "role_id", "role_name", service.getAllRole().Select(x => x.role_id));

                var user = service.getById(Id);
                if (user == null)
                {
                    return NotFound();
                }
                return View("Update", user);
            }
            return RedirectToAction("Index", "User");
        }
        [HttpPost]
        public IActionResult Update(User user)
        {
            service.Update(user);
            return RedirectToAction("Index", "User");
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
                var user = service.getById(id);
                ViewBag.role_id = new SelectList(service.getAllRole(), "role_id", "role_name", service.getAllRole().Select(x => x.role_id));

                if (user == null)
                {
                    return NotFound();
                }
                return View("Delete", user);
            }
            return RedirectToAction("Index", "User");
        }
        [HttpPost]
        public IActionResult Delete(User user)
        {
            service.Delete(user);
            return RedirectToAction("Index", "User");
        }
    }
}
