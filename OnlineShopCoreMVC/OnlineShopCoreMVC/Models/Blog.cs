using Microsoft.EntityFrameworkCore.Storage.ValueConversion.Internal;

namespace OnlineShopCoreMVC.Models
{
    public class Blog
    {
        public int blog_id {get; set;}
        public string blog_title {get; set;}
        public string blog_author { get; set;}
        public DateTime blog_createdate { get; set; } = DateTime.Now;
        public string? blog_createBy { get; set; }
        public DateTime? blog_modifydate { get; set; } = DateTime.Now;
        public string blog_modifyby { get; set; }
        public string blog_backlink { get; set; }
        public string blog_image { get; set; }
        public string blog_detail { get; set; }



    }
}
