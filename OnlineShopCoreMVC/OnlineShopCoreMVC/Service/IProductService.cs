using OnlineShopCoreMVC.Models;
namespace OnlineShopCoreMVC.Service
{
    public interface IProductService
    {
        public List<Product> getAll();
        public Product getById(int? id);
        public List<Product> getByName(string? name);
        public void Create(Product product);
        public void Update(Product product);
        public void Delete(Product product);
        public List<Product> searching(int page, int size, string? search);
        public List<Product> sortByPrice(int fromprice, int toprice);
        public List<Category> getAllCategory();
        public List<ProductStatus> getAllproductStatus();


        //public Task UploadFile(IFormFile file);
    }


}
