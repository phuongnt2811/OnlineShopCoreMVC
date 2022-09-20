using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Models;
using OnlineShopCoreMVC.Service;

namespace OnlineShopCoreMVC.Repository
{
    public class UserRepository : IUserService
    {
        private readonly ShopDBContext db;
        public UserRepository(ShopDBContext db)
        {
            this.db = db;
        }

        public List<User> getAll()
        {
            var listUser = db.users.Include(u => u.Role).ToList();
            return listUser;
        }

        public User getById(int? id)
        {
            var user = db.users.FirstOrDefault(x => x.user_id == id);
            return user;
        }

        public List<User> getByName(string? name)
        {
            var user = db.users.Where(x => x.username == name).ToList();
            return user;
        }
        public void Create(User user)
        {
            db.users.Add(user);
            db.SaveChanges();
        }
   public void Update(User user)
        {
            db.users.Update(user);
            db.SaveChanges();
        }
        public void Delete(User user)
        {
            db.users.Remove(user);
            db.SaveChanges();
        }

      

        public List<User> searching(int page, int size, string? search)
        {
            if (!string.IsNullOrEmpty(search))
            {
                var listsearch = getAll().Where(x => x.username.ToUpper().Contains(search.ToUpper()) || 
                x.fullname.ToUpper().Contains(search.ToUpper()) || x.user_phone.Contains(search) || 
                x.user_address.ToUpper().Contains(search.ToUpper()) || x.user_email.ToUpper().Contains(search.ToUpper())
                ).Skip((page - 1) * size).Take(size).ToList();
                return listsearch;
            }
            else
            {
                var listproduct = getAll().Skip((page - 1) * size).Take(size).ToList();
                return listproduct;
            }
        }

        public List<Role> getAllRole()
        {
            var listrole = db.roles.ToList();
            return listrole;
        }
    }
}
