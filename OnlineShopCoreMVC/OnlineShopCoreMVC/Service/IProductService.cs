using OnlineShopCoreMVC.Models;
namespace OnlineShopCoreMVC.Service
{
    public interface IProductService
    {
        public List<Product> getAllProducts();
        public Product getProductById(int? id);
        public List<Product> getProductByName(string? name);
        public void CreateProduct(Product product);
        public void UpdateProduct(Product product);
        public void DeleteProduct(int id);
        public List<Product> searching(int page, int size, string? search);
    }
}
