namespace OnlineShopCoreMVC.Models
{
    public class Role
    {
        [Key]
        public int role_id { get; set; }
        public string role_name { get; set; }
        public string role_description { get; set; }
        public ICollection<User> Users { get; set; }
    }
}
