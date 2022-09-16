using System.ComponentModel.DataAnnotations;

namespace OnlineShopCoreMVC.Models
{
    public class SizeofShoes
    {
        [Key]
        public int size_id { get; set; }
        public string size_name { get; set; }
        public IList<ProductSize> productSizes { get; set; }
    }
}
