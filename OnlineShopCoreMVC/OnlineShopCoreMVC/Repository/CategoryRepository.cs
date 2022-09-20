using Microsoft.AspNetCore.Mvc.ModelBinding;
using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Repository
{
    public class CategoryRepository : ICategoryService
    {
        private readonly ShopDBContext db;
        public CategoryRepository(ShopDBContext db) { this.db = db; }

        public List<Category> getAll()
        {
            var listCategories = db.categories.ToList();
            return listCategories;
        }

        public Category getById(int? id)
        {
            var cate = db.categories.FirstOrDefault(x => x.category_id == id);
            return cate;
        }

        public List<Category> getByName(string? name)
        {
            var cate = db.categories.Where(x => x.category_name == name).ToList();
            return cate;
        }

        public void Create(Category category)
        {
            db.categories.Add(category);
            db.SaveChanges();

        }

        public void Update(Category category)
        {
            db.categories.Update(category);
            db.SaveChanges();
        }
        public void Delete(Category category)
        {
            db.categories.Remove(category);
            db.SaveChanges();
        }

        public List<Category> searching(int page, int size, string? search)
        {
            if (!string.IsNullOrEmpty(search))
            {
                var listsearch = getAll().Where(x => x.category_name.ToUpper().Contains(search.ToUpper()) || x.category_description.ToUpper().Contains(search.ToUpper())).Skip((page - 1) * size).Take(size).ToList();
                return listsearch;
            }
            else
            {
                var listproduct = getAll().Skip((page - 1) * size).Take(size).ToList();
                return listproduct;
            }
        }

    }
}
