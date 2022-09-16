namespace OnlineShopCoreMVC.Models
{
    public class User
    {
        [Key]
        public int user_id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string fullname { get; set; }
        public bool user_gender { get; set; }
        public string user_email { get; set; }
        public string user_phone { get; set; }
        public string user_address { get; set; }
        public int user_role_id { get; set; }
        public string? user_image { get; set; }
        public DateTime? user_dob { get; set; }
        public DateTime user_createdate { get; set; } = DateTime.Now;
        public Role Role { get; set; }
        public ICollection<Order> Orders { get; set; }


    }
}
