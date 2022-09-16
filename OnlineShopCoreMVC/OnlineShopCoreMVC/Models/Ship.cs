namespace OnlineShopCoreMVC.Models
{
    public class Ship
    {
        [Key]
        public int ship_id { get; set; }
        public string ship_name { get; set; }
        public string ship_email { get; set; }
        public string ship_phone { get; set; }

        public ICollection<Order> orders { get; set; }
    }
}
