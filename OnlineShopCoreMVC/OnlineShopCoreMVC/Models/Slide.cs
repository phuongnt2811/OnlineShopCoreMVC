namespace OnlineShopCoreMVC.Models
{
    public class Slide
    {
        [Key]
        public int slide_id { get; set; }
        public string slide_title { get; set; }
        public DateTime slide_createdate { get; set; }= DateTime.Now;
        public string slide_createBy { get; set; }
        public DateTime? silde_modifydate { get; set; } = DateTime.Now;
        public string? slide_modifyby { get; set; }
        public string slide_image { get; set; }
        public string slide_description { get; set; }

    }
}
