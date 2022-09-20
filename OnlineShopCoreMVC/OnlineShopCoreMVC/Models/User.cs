using System.ComponentModel;

namespace OnlineShopCoreMVC.Models
{
    public class User
    {
        [Key]
        public int user_id { get; set; }
        [DisplayName("Username")]
        [Required(ErrorMessage = "Username is Required")]
        public string username { get; set; }

        [DisplayName("Password")]
        [Required(ErrorMessage = "Password is Required")]
        [DataType(DataType.Password)]
        [StringLength(20, MinimumLength = 8, ErrorMessage = "Password should be between 8 and 20 characters")]
        public string password { get; set; }
        [DisplayName("Full name")]
        [Required(ErrorMessage = "Full name is Required")]
        public string fullname { get; set; }
        [DisplayName("Gender")]
        [Required(ErrorMessage = "Gender is Required")]
        public bool user_gender { get; set; }
        [DisplayName("Email")]
        [Required(ErrorMessage = "Email is Required")]
        [StringLength(50, MinimumLength = 2, ErrorMessage = "Email should be between 2 and 50 characters")]
        public string user_email { get; set; }
        [DisplayName("Phone Number")]
        [Required(ErrorMessage = "Phone Number is Required")]
        [StringLength(10, ErrorMessage = "Phone Number should be 10 characters")]
        public string user_phone { get; set; }
        [DisplayName("Address")]
        [Required(ErrorMessage = "Address is Required")]
        public string user_address { get; set; }
        [DisplayName("Role")]
        [Required(ErrorMessage = "Role is Required")]
        public int user_role_id { get; set; }
        [DisplayName("Image")]

        public string? user_image { get; set; }
        [DisplayName("Date of birth")]
        [DateRange("01/01/1960", ErrorMessage = "Date of birth must be between 01-01-1960 and Current Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]

        public DateTime? user_dob { get; set; }
        [DisplayName("Create date")]
        [DateRange("01/01/1960", ErrorMessage = "CreateDate must be between 01-01-1960 and Current Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]

        public DateTime user_createdate { get; set; } = DateTime.Now;
        public bool? user_isactive { get; set; } = true;
        public Role Role { get; set; }
        public ICollection<Order> Orders { get; set; }


    }
}
