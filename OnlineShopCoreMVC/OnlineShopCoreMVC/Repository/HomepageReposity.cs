using OnlineShopCoreMVC.Controllers;
using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Repository
{
    public class HomepageReposity : IHomepageService
    {
        private readonly ShopDBContext db;
        public HomepageReposity(ShopDBContext db)
        {
            this.db = db;
        }
        public List<Product> getAll()
        {
            var listpro = db.products.Include(p => p.ProductStatus).Include(p => p.Category).ToList();
            return listpro;
        }
    }
}
