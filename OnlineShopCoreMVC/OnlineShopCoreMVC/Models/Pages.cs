namespace OnlineShopCoreMVC.Models
{
    public class Pages
    {
        public int currentPages { get; set; }
        public int totalPages { get; set; }
        public int totalItems { get; set; }
        public int pageSize { get; set; }
        public int startPage { get; set; }
        public int endPage { get; set; }
        public Pages()
        {

        }
        public Pages(int page,int pageSize, int totalitem )
        {
            int totalpages = (int)Math.Ceiling((decimal)totalItems / (decimal)pageSize);
            int currentpage = page;
            int startpage = currentpage - 5;
            int endpage = currentpage + 4;
            if (startpage <= 0)
            {
                endpage = endpage - currentpage + 1;
                startpage = 1;
            }
            if (endpage > totalpages)
            {
                endpage = totalpages;
                if (endpage > pageSize)
                {
                    startpage = endpage - pageSize + 1;
                }
            }
            totalPages = totalpages;
            currentPages = currentpage;
            totalItems = totalitem;
            this.pageSize = pageSize;
            startPage = startpage;
            endPage = endpage;

        }
    }
}
