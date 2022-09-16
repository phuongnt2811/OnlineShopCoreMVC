using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OnlineShopCoreMVC.Models
{
    public class Product
    {
        [Key]
        public int product_id { get; set; }

        public string product_name { get; set; }

        public float product_price { get; set; }

        public string? product_description { get; set; }

        public int product_quantity { get; set; }

        public string product_image { get; set; }

        public int category_id { get; set; }
        public int product_status_id { get; set; }

        public string product_backlink { get; set; }
        public DateTime product_selldate { get; set; }
        public IList<ProductColor> productColors { get; set; }
        public ProductStatus ProductStatus { get; set; }
        public Category Category { get; set; }
        public IList<OrderDetails> OrderDetails { get; set; }
        public IList<ProductSize> productSizes { get; set; }

    }
}
