namespace OnlineShopCoreMVC.Models
{
    public class OrderDetails
    {
        
        public int orderId { get; set; }  
        public int productId { get; set; }
        public int product_quantity { get; set; }
        public float product_total_money { get; set; }

        public Order Order { get; set; }
        public Product Product { get; set; }

    }
}
