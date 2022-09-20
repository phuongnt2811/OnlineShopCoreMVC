global using System.ComponentModel.DataAnnotations;
global using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using OnlineShopCoreMVC.DataContext;
using OnlineShopCoreMVC.Repository;
using OnlineShopCoreMVC.Service;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddScoped<IProductService, ProductRepository>();
builder.Services.AddScoped<ICategoryService, CategoryRepository>();
builder.Services.AddScoped<IUserService, UserRepository>();
builder.Services.AddScoped<IOrderService, OrderRepository>();
builder.Services.AddScoped<IHomepageService, HomepageReposity>();

builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<ShopDBContext>(options =>
options.UseSqlServer(
    builder.Configuration.GetConnectionString("MyStoreDB")
    ));
builder.Services.AddRazorPages();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Products}/{action=Index}/{id?}");

app.Run();
