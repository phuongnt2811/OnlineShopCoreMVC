using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.Service
{
    public interface IOrderService
    {
        public List<Order> getAll();
        public Order getById(int? id);
        public void Create(Order user);
        public void Update(Order user);
        public void Delete(Order user);
        public List<Order> searching(int page, int size, string? search);
        public List<OrderDetails> GetOrderDetails();


    }
}
