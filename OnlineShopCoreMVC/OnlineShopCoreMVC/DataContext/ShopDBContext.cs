using Microsoft.EntityFrameworkCore;
using OnlineShopCoreMVC.Models;

namespace OnlineShopCoreMVC.DataContext
{
    public class ShopDBContext : DbContext
    {
        public ShopDBContext(DbContextOptions<ShopDBContext> options) : base(options)
        {

        }
        public DbSet<Product> products { get; set; }
        public DbSet<SizeofShoes> sizes { get; set; }
        public DbSet<Color> colors { get; set; }
        public DbSet<Category> categories { get; set; }
        public DbSet<Blog> blogs { get; set; }
        public DbSet<Slide> slides { get; set; }
        public DbSet<OrderStatus> orderStatuses { get; set; }
        public DbSet<ProductStatus> productsStatus { get; set; }
        public DbSet<Order> orders { get; set; }
        public DbSet<OrderDetails> orderDetails { get; set; }
        public DbSet<Role> roles { get; set; }
        public DbSet<Ship> ships { get; set; }
        public DbSet<User> users { get; set; }
        public DbSet<ProductColor> productColors { get; set; }
        public DbSet<ProductSize> productSizes { get; set; }
       

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
          
            modelBuilder.Entity<Product>().HasOne<Category>(p => p.Category).WithMany(c => c.products).HasForeignKey(c => c.category_id);
            modelBuilder.Entity<Product>().HasOne<ProductStatus>(p=> p.ProductStatus).WithMany(ps=>ps.products).HasForeignKey(ps => ps.product_status_id);
            modelBuilder.Entity<OrderDetails>().HasKey(od => new {od.orderId, od.productId});
            modelBuilder.Entity<OrderDetails>().HasOne<Product>(od => od.Product).WithMany(p => p.OrderDetails).HasForeignKey(od => od.productId);
            modelBuilder.Entity<OrderDetails>().HasOne<Order>(od => od.Order).WithMany(o => o.OrderDetails).HasForeignKey(od => od.orderId);
            modelBuilder.Entity<ProductSize>().HasKey(od => new { od.ProductId, od.sizeId });
            modelBuilder.Entity<ProductSize>().HasOne<Product>(od => od.Product).WithMany(p => p.productSizes).HasForeignKey(od => od.ProductId);
            modelBuilder.Entity<ProductSize>().HasOne<SizeofShoes>(od => od.SizeofShoes).WithMany(o => o.productSizes).HasForeignKey(od => od.sizeId);
          
            modelBuilder.Entity<ProductColor>().HasKey(od => new { od.ProductId, od.colorId });
            modelBuilder.Entity<ProductColor>().HasOne<Product>(od => od.Product).WithMany(p => p.productColors).HasForeignKey(od => od.ProductId);
            modelBuilder.Entity<ProductColor>().HasOne<Color>(od => od.Color).WithMany(o => o.productColors).HasForeignKey(od => od.colorId);
            modelBuilder.Entity<Order>().HasOne<User>(o => o.User).WithMany(u => u.Orders).HasForeignKey(o => o.user_id);
            modelBuilder.Entity<Order>().HasOne<OrderStatus>(o => o.OrderStatus).WithMany(os => os.Orders).HasForeignKey(o => o.order_status_id);
            modelBuilder.Entity<Order>().HasOne<Ship>(o => o.Ship).WithMany(s => s.orders).HasForeignKey(o => o.ship_id);
            modelBuilder.Entity<User>().HasOne<Role>(u => u.Role).WithMany(r => r.Users).HasForeignKey(u=>u.user_role_id);
            modelBuilder.Entity<Product>().Property(p => p.product_name).IsUnicode().HasMaxLength(100);
            modelBuilder.Entity<Product>().HasKey(p => p.product_id);
            modelBuilder.Entity<Product>().Property(p => p.product_description).HasMaxLength(1000);
            modelBuilder.Entity<User>().Property(u => u.username).IsUnicode(false).HasMaxLength(100).IsRequired();
            modelBuilder.Entity<User>().Property(u=> u.password).IsUnicode(false).HasMaxLength(20).IsRequired();
            modelBuilder.Entity<User>().HasKey(p => p.user_id);
            modelBuilder.Entity<Color>().HasKey(c => c.color_id);
            modelBuilder.Entity<OrderStatus>().HasKey(os => os.order_status_id);
            modelBuilder.Entity<Blog>().HasKey(b => b.blog_id);
            modelBuilder.Entity<Category>().HasKey(c => c.category_id);
            modelBuilder.Entity<ProductStatus>().HasKey(ps => ps.product_status_id);
            modelBuilder.Entity<Role>().HasKey(c => c.role_id);
            modelBuilder.Entity<Ship>().HasKey(s => s.ship_id);
            modelBuilder.Entity<SizeofShoes>().HasKey(s => s.size_id);
            modelBuilder.Entity<Slide>().HasKey(s => s.slide_id);
            
        }
    }
}
