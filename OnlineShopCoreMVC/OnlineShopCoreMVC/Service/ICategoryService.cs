using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.Service
{
    public interface ICategoryService
    {
        public List<Category> getAll();
        public Category getById(int? id);
        public List<Category> getByName(string? name);
        public void Create(Category category);
        public void Update(Category category);
        public void Delete(Category category);
        public List<Category> searching(int page, int size, string? search);
    }
}
