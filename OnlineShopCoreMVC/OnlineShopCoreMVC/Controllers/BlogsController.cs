using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.Controllers
{
    public class BlogsController : Controller
    {
        private readonly ShopDBContext _context;

        public BlogsController(ShopDBContext context)
        {
            _context = context;
        }

        // GET: Blogs
        public async Task<IActionResult> Index()
        {
              return View(await _context.blogs.ToListAsync());
        }

        // GET: Blogs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.blogs
                .FirstOrDefaultAsync(m => m.blog_id == id);
            if (blog == null)
            {
                return NotFound();
            }

            return View(blog);
        }

        // GET: Blogs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Blogs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("blog_id,blog_title,blog_author,blog_createdate,blog_createBy,blog_modifydate,blog_modifyby,blog_backlink,blog_image,blog_detail")] Blog blog)
        {
            if (ModelState.IsValid)
            {
                _context.Add(blog);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(blog);
        }

        // GET: Blogs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.blogs.FindAsync(id);
            if (blog == null)
            {
                return NotFound();
            }
            return View(blog);
        }

        // POST: Blogs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("blog_id,blog_title,blog_author,blog_createdate,blog_createBy,blog_modifydate,blog_modifyby,blog_backlink,blog_image,blog_detail")] Blog blog)
        {
            if (id != blog.blog_id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(blog);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BlogExists(blog.blog_id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(blog);
        }

        // GET: Blogs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.blogs == null)
            {
                return NotFound();
            }

            var blog = await _context.blogs
                .FirstOrDefaultAsync(m => m.blog_id == id);
            if (blog == null)
            {
                return NotFound();
            }

            return View(blog);
        }

        // POST: Blogs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.blogs == null)
            {
                return Problem("Entity set 'ShopDBContext.blogs'  is null.");
            }
            var blog = await _context.blogs.FindAsync(id);
            if (blog != null)
            {
                _context.blogs.Remove(blog);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BlogExists(int id)
        {
          return _context.blogs.Any(e => e.blog_id == id);
        }
    }
}
