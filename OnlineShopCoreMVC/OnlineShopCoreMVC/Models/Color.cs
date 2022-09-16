namespace OnlineShopCoreMVC.Models
{
    public class Color
    {
        public int color_id { get; set; }
        public string color_name { get; set; }
        public IList<ProductColor> productColors { get; set; }
    }
}
