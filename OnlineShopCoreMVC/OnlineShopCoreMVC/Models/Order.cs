namespace OnlineShopCoreMVC.Models
{
    public class Order
    {
        [Key]
        public int order_id { get; set; }
        public int user_id { get; set; }
        public int order_status_id { get; set; }
        public DateTime order_created_date { get; set; } = DateTime.Now;
        public float total_money { get; set; }
        public int ship_id { get; set; }
        public Ship Ship { get; set; }
        public OrderStatus OrderStatus { get; set; }
        public User User { get; set; }
        public IList<OrderDetails> OrderDetails { get; set; }


    }
}
