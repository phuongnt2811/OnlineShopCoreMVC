namespace OnlineShopCoreMVC.Models
{
    public class OrderStatus
    {
        [Key]
        public int order_status_id { get; set; }
        public string? order_status_details { get; set; }
        public ICollection<Order> Orders { get; set; }
    }
}
