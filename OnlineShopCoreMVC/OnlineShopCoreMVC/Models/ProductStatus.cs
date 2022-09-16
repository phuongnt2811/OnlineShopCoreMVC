namespace OnlineShopCoreMVC.Models
{
    public class ProductStatus
    {
        [Key]
        public int product_status_id { get; set; }
        public string product_status_name { get; set; }
        public ICollection<Product> products { get; set; }
    }
}
