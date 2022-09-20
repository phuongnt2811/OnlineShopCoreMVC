using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Repository
{
    public class OrderRepository : IOrderService
    {
        private readonly ShopDBContext db;
        public OrderRepository(ShopDBContext db)
        {
            this.db = db;
        }

        public void Create(Order user)
        {
            throw new NotImplementedException();
        }

        public void Delete(Order user)
        {
            throw new NotImplementedException();
        }

        public List<Order> getAll()
        {
            var listorder = db.orders.Include(o=> o.Ship).Include(o=> o.User).Include(o=> o.OrderDetails).Include(o=> o.OrderStatus).ToList();
            return listorder;
        }

        public Order getById(int? id)
        {
            throw new NotImplementedException();
        }

        public List<OrderDetails> GetOrderDetails()
        {
            var listorder = db.orderDetails.Include(o => o.Order).Include(o => o.Product).ToList();
            return listorder;
        }

        public List<Order> searching(int page, int size, string? search)
        {
            if (!string.IsNullOrEmpty(search))
            {
                var listorder = getAll().Where(x=> x.User.username.ToLower().Contains(search.ToLower())
                || x.Ship.ship_name.ToLower().Contains(search.ToLower())).Skip((page-1)* size).Take(size).ToList();
                return listorder;
            }
            else
            {
                var listorder = getAll().Skip((page - 1) * size).Take(size).ToList();
                return listorder;
            }
        }

        public void Update(Order user)
        {
            throw new NotImplementedException();
        }
    }
}
