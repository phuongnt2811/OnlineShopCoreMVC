using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;
using System.Linq;
using System.IO;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Net.Http.Headers;

namespace OnlineShopCoreMVC.Repository
{
    public class ProductRepository : IProductService
    {
        private readonly ShopDBContext db;
        public ProductRepository(ShopDBContext db)
        {
            this.db = db;
        }

        public List<Product> getAll()
        {
            var listpro = db.products.Include(p => p.ProductStatus).Include(p => p.Category).ToList();
            return listpro;
        }
        public Product getById(int? id)
        {
            var product = db.products.FirstOrDefault(x => x.product_id == id);
            return product;

        }
        public List<Product> getByName(string name)
        {
            var products = db.products.ToList();
            return products;
        }

        public void Create(Product product)
        {

            db.products.Add(product);
            db.SaveChanges();
        }
        public List<Product> searching(int page, int size, string? search)
        {
            if (!string.IsNullOrEmpty(search))
            {
                var listsearch = getAll().Where(x => x.product_name.ToUpper().Contains(search.ToUpper()) || x.Category.category_name.ToUpper().Contains(search.ToUpper()) || x.product_description.ToUpper().Contains(search.ToUpper())).Skip((page - 1) * size).Take(size).ToList();
                return listsearch;
            }
            else
            {
                var listproduct = getAll().Skip((page - 1) * size).Take(size).ToList();
                return listproduct;
            }

        }
        public void Update(Product product)
        {
            db.products.Update(product);
            db.SaveChanges();
        }
        public void Delete(Product product)
        {
            db.products.Remove(product);
            db.SaveChanges();
        }

        public List<Product> sortByPrice(int fromprice, int toprice)
        {
            var listpr = getAll().Where(x => x.product_price >= fromprice && x.product_price <= toprice).ToList();
            return listpr;
        }

        public List<Category> getAllCategory()
        {
            var listCategories = db.categories.ToList();

            return listCategories;
        }
        public List<ProductStatus> getAllproductStatus()
        {
            var listpr = db.productsStatus.ToList();

            return listpr;
        }
        //public async Task UploadFile(IFormFile file)
        //{
        //    try
        //    {
        //        bool isCopied = false;
        //        1 check if the file length is greater than 0 bytes
        //        if (file.Length > 0)
        //        {
        //            string fileName = file.FileName;
        //            2 Get the extension of the file
        //            string extension = Path.GetExtension(fileName);
        //            3 check the file extension as png
        //            if (extension == ".png" || extension == ".jpg")
        //            {
        //                4 set the path where file will be copied
        //                string filePath = Path.GetFullPath(
        //                    Path.Combine(Directory.GetCurrentDirectory(),
        //                                                "UploadedFiles"));
        //                5 copy the file to the path
        //                using (var fileStream = new FileStream(
        //                    Path.Combine(filePath, fileName),
        //                                   FileMode.Create))
        //                {
        //                    await file.CopyToAsync(fileStream);
        //                    isCopied = true;
        //                }
        //            }
        //            else
        //            {
        //                throw new Exception("File must be either .png or .JPG");
        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}


    }
}
