using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.Service
{
    public interface IUserService
    {
        public List<User> getAll();
        public User getById(int? id);
        public List<User> getByName(string? name);
        public void Create(User user);
        public void Update(User user);
        public void Delete(User user);
        public List<User> searching(int page, int size, string? search);
        public List<Role> getAllRole();
    }
}
