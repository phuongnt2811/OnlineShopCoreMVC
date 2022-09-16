using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;
using System.Drawing;
using SizeofShoes = OnlineShopCoreMVC.Models.SizeofShoes;

namespace OnlineShopCoreMVC.Repository
{
    public class SizeRepository : ISizeService
    {
        private readonly ShopDBContext db;
        public SizeRepository(ShopDBContext db)
        {
            this.db = db;
        }   

        public void createSize(SizeofShoes size)
        {
            db.sizes.Add(size);
            db.SaveChanges();
        }

        public void deleteSize(int? id)
        {
            throw new NotImplementedException();
        }

        public List<SizeofShoes> getAllSize()
        {
          var listSize =  db.sizes.ToList();
            return listSize;
        }

        public void updateSize(SizeofShoes size)
        {
            throw new NotImplementedException();
        }
    }
}
