namespace OnlineShopCoreMVC.Models
{
    internal class DateRangeAttribute : RangeAttribute
    {
        public DateRangeAttribute(string minimumvalue):base(typeof(DateTime), minimumvalue, DateTime.Now.ToShortDateString())
        {

        }
    }
}