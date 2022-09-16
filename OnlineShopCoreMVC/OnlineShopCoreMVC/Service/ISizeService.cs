using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.Service
{
    public interface ISizeService
    {
        public List<SizeofShoes> getAllSize();
        public void createSize(SizeofShoes size);
        public void updateSize(SizeofShoes size);
        public void deleteSize(int? id);
    }
}
