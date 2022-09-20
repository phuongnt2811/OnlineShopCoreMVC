using System.ComponentModel;

namespace OnlineShopCoreMVC.Models
{
    public class Category
    {
        public int category_id { get; set; }
        
        [DisplayName("Category Name")]
        [Required(ErrorMessage = "Category Name is Required")]
        public string category_name { get; set; }
        [DisplayName("Description")]
        public string? category_description { get; set; }
        public ICollection<Product> products { get; set; }

    }
}
