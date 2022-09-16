using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;
using System.Linq;

namespace OnlineShopCoreMVC.Repository
{
    public class ProductRepository : IProductService
    {
        private readonly ShopDBContext db;
        public ProductRepository(ShopDBContext db)
        {
            this.db = db;
        }

        public List<Product> getAllProducts()
        {

            var listProduct = db.products.ToList();
            return listProduct;
        }
        public void CreateProduct(Product product)
        {
            db.products.Add(product);
            db.SaveChanges();
        }



        public Product getProductById(int? id)
        {
            var product = db.products.FirstOrDefault(x => x.product_id == id);
            return product;

        }

        public List<Product> getProductByName(string name)
        {
            var products = db.products.ToList();
            return products;
        }

        public List<Product> searching(int page, int size, string? search)
        { 
            if (!string.IsNullOrEmpty(search))
            {
                var listsearch = getAllProducts().Where(x => x.product_name.Contains(search)).Skip((page - 1) * size).Take(size).ToList();
                return listsearch;
            }
            else
            {
                var listproduct = getAllProducts().Skip((page - 1) * size).Take(size).ToList();
                return listproduct;
            }

        }

        public void UpdateProduct(Product product)
        {
            db.products.Update(product);
            db.SaveChanges();

        }
        public void DeleteProduct(int id)
        {
            db.products.Remove(getProductById(id));
            db.SaveChanges();
        }


    }
}
