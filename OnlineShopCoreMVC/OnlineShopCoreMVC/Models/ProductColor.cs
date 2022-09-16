namespace OnlineShopCoreMVC.Models
{
    public class ProductColor
    {
        public int ProductId { get; set; }
        public int colorId { get; set; }
        public int product_quantity { get; set; }
        public Product Product { get; set; }
        public Color Color { get; set; }
    }
}
