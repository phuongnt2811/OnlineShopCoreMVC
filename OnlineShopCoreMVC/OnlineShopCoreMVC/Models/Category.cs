namespace OnlineShopCoreMVC.Models
{
    public class Category
    {
        public int category_id { get; set; }
        public string category_name { get; set; }
        public string? category_description { get; set; }
        public ICollection<Product> products { get; set; }

    }
}
