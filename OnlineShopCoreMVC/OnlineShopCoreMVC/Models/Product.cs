using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnlineShopCoreMVC.Models
{
    public class Product
    {
        [Key]
        public int product_id { get; set; }
        [DisplayName("Product name")]
        [Required(ErrorMessage = "Product name is required")]
        public string product_name { get; set; }

        [Required(ErrorMessage = "Price is Required")]
        [DisplayName("Price")]
        public float product_price { get; set; }


        public string? product_description { get; set; }

        [Required(ErrorMessage = "Quantity of product is Required")]
        [DisplayName("Quantity")]

        public int product_quantity { get; set; }
        [DisplayName("Image")]

        [Required(ErrorMessage = "Image of product is Required")]
        public string product_image { get; set; }
        [Required(ErrorMessage = "Category is Required")]
        [DisplayName("Category")]
        public int category_id { get; set; }
        [Required(ErrorMessage = "Status is Required")]
        public int product_status_id { get; set; }
        [DisplayName("Backlink")]
        public string? product_backlink { get; set; }
        [Required(ErrorMessage = "Date is Required")]
        [DisplayName("Date")]
        public DateTime product_selldate { get; set; }

        public IList<ProductColor> productColors { get; set; }
        public ProductStatus ProductStatus { get; set; }
        public Category Category { get; set; }
        public IList<OrderDetails> OrderDetails { get; set; }
        public IList<ProductSize> productSizes { get; set; }

    }
}
