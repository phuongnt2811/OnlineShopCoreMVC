namespace OnlineShopCoreMVC.Models
{
    public class ProductSize
    {
        public  int ProductId { get; set; }
        public int sizeId { get; set; }
        public int product_quantity { get; set; }
        public Product Product { get; set; }
        public SizeofShoes SizeofShoes { get; set; }


    }
}
