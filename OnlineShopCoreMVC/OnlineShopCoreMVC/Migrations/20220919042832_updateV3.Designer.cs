﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using OnlineShopCoreMVC.DataContext;

#nullable disable

namespace OnlineShopCoreMVC.Migrations
{
    [DbContext(typeof(ShopDBContext))]
    [Migration("20220919042832_updateV3")]
    partial class updateV3
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.9")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Blog", b =>
                {
                    b.Property<int>("blog_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("blog_id"), 1L, 1);

                    b.Property<string>("blog_author")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("blog_backlink")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("blog_createBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("blog_createdate")
                        .HasColumnType("datetime2");

                    b.Property<string>("blog_detail")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("blog_image")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("blog_modifyby")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("blog_modifydate")
                        .HasColumnType("datetime2");

                    b.Property<string>("blog_title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("blog_id");

                    b.ToTable("blogs");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Category", b =>
                {
                    b.Property<int>("category_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("category_id"), 1L, 1);

                    b.Property<string>("category_description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("category_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("category_id");

                    b.ToTable("categories");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Color", b =>
                {
                    b.Property<int>("color_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("color_id"), 1L, 1);

                    b.Property<string>("color_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("color_id");

                    b.ToTable("colors");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Order", b =>
                {
                    b.Property<int>("order_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("order_id"), 1L, 1);

                    b.Property<DateTime>("order_created_date")
                        .HasColumnType("datetime2");

                    b.Property<int>("order_status_id")
                        .HasColumnType("int");

                    b.Property<int>("ship_id")
                        .HasColumnType("int");

                    b.Property<float>("total_money")
                        .HasColumnType("real");

                    b.Property<int>("user_id")
                        .HasColumnType("int");

                    b.HasKey("order_id");

                    b.HasIndex("order_status_id");

                    b.HasIndex("ship_id");

                    b.HasIndex("user_id");

                    b.ToTable("orders");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.OrderDetails", b =>
                {
                    b.Property<int>("orderId")
                        .HasColumnType("int");

                    b.Property<int>("productId")
                        .HasColumnType("int");

                    b.Property<int>("product_quantity")
                        .HasColumnType("int");

                    b.Property<float>("product_total_money")
                        .HasColumnType("real");

                    b.HasKey("orderId", "productId");

                    b.HasIndex("productId");

                    b.ToTable("orderDetails");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.OrderStatus", b =>
                {
                    b.Property<int>("order_status_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("order_status_id"), 1L, 1);

                    b.Property<string>("order_status_details")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("order_status_id");

                    b.ToTable("orderStatuses");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Product", b =>
                {
                    b.Property<int>("product_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("product_id"), 1L, 1);

                    b.Property<int>("category_id")
                        .HasColumnType("int");

                    b.Property<string>("product_backlink")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("product_description")
                        .HasMaxLength(1000)
                        .HasColumnType("nvarchar(1000)");

                    b.Property<string>("product_image")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("product_name")
                        .IsRequired()
                        .HasMaxLength(100)
                        .IsUnicode(true)
                        .HasColumnType("nvarchar(100)");

                    b.Property<float>("product_price")
                        .HasColumnType("real");

                    b.Property<int>("product_quantity")
                        .HasColumnType("int");

                    b.Property<DateTime>("product_selldate")
                        .HasColumnType("datetime2");

                    b.Property<int>("product_status_id")
                        .HasColumnType("int");

                    b.HasKey("product_id");

                    b.HasIndex("category_id");

                    b.HasIndex("product_status_id");

                    b.ToTable("products");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductColor", b =>
                {
                    b.Property<int>("ProductId")
                        .HasColumnType("int");

                    b.Property<int>("colorId")
                        .HasColumnType("int");

                    b.Property<int>("product_quantity")
                        .HasColumnType("int");

                    b.HasKey("ProductId", "colorId");

                    b.HasIndex("colorId");

                    b.ToTable("productColors");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductSize", b =>
                {
                    b.Property<int>("ProductId")
                        .HasColumnType("int");

                    b.Property<int>("sizeId")
                        .HasColumnType("int");

                    b.Property<int>("product_quantity")
                        .HasColumnType("int");

                    b.HasKey("ProductId", "sizeId");

                    b.HasIndex("sizeId");

                    b.ToTable("productSizes");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductStatus", b =>
                {
                    b.Property<int>("product_status_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("product_status_id"), 1L, 1);

                    b.Property<string>("product_status_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("product_status_id");

                    b.ToTable("productsStatus");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Role", b =>
                {
                    b.Property<int>("role_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("role_id"), 1L, 1);

                    b.Property<string>("role_description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("role_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("role_id");

                    b.ToTable("roles");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Ship", b =>
                {
                    b.Property<int>("ship_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ship_id"), 1L, 1);

                    b.Property<string>("ship_email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ship_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ship_phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ship_id");

                    b.ToTable("ships");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.SizeofShoes", b =>
                {
                    b.Property<int>("size_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("size_id"), 1L, 1);

                    b.Property<string>("size_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("size_id");

                    b.ToTable("sizes");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Slide", b =>
                {
                    b.Property<int>("slide_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("slide_id"), 1L, 1);

                    b.Property<DateTime?>("silde_modifydate")
                        .HasColumnType("datetime2");

                    b.Property<string>("slide_createBy")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("slide_createdate")
                        .HasColumnType("datetime2");

                    b.Property<string>("slide_description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("slide_image")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("slide_modifyby")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("slide_title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("slide_id");

                    b.ToTable("slides");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.User", b =>
                {
                    b.Property<int>("user_id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("user_id"), 1L, 1);

                    b.Property<string>("fullname")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("password")
                        .IsRequired()
                        .HasMaxLength(20)
                        .IsUnicode(false)
                        .HasColumnType("varchar(20)");

                    b.Property<string>("user_address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("user_createdate")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("user_dob")
                        .HasColumnType("datetime2");

                    b.Property<string>("user_email")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<bool>("user_gender")
                        .HasColumnType("bit");

                    b.Property<string>("user_image")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("user_phone")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.Property<int>("user_role_id")
                        .HasColumnType("int");

                    b.Property<string>("username")
                        .IsRequired()
                        .HasMaxLength(100)
                        .IsUnicode(false)
                        .HasColumnType("varchar(100)");

                    b.HasKey("user_id");

                    b.HasIndex("user_role_id");

                    b.ToTable("users");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Order", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.OrderStatus", "OrderStatus")
                        .WithMany("Orders")
                        .HasForeignKey("order_status_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.Ship", "Ship")
                        .WithMany("orders")
                        .HasForeignKey("ship_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.User", "User")
                        .WithMany("Orders")
                        .HasForeignKey("user_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("OrderStatus");

                    b.Navigation("Ship");

                    b.Navigation("User");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.OrderDetails", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.Order", "Order")
                        .WithMany("OrderDetails")
                        .HasForeignKey("orderId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.Product", "Product")
                        .WithMany("OrderDetails")
                        .HasForeignKey("productId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Order");

                    b.Navigation("Product");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Product", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.Category", "Category")
                        .WithMany("products")
                        .HasForeignKey("category_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.ProductStatus", "ProductStatus")
                        .WithMany("products")
                        .HasForeignKey("product_status_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Category");

                    b.Navigation("ProductStatus");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductColor", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.Product", "Product")
                        .WithMany("productColors")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.Color", "Color")
                        .WithMany("productColors")
                        .HasForeignKey("colorId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Color");

                    b.Navigation("Product");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductSize", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.Product", "Product")
                        .WithMany("productSizes")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("OnlineShopCoreMVC.Models.SizeofShoes", "SizeofShoes")
                        .WithMany("productSizes")
                        .HasForeignKey("sizeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Product");

                    b.Navigation("SizeofShoes");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.User", b =>
                {
                    b.HasOne("OnlineShopCoreMVC.Models.Role", "Role")
                        .WithMany("Users")
                        .HasForeignKey("user_role_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Role");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Category", b =>
                {
                    b.Navigation("products");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Color", b =>
                {
                    b.Navigation("productColors");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Order", b =>
                {
                    b.Navigation("OrderDetails");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.OrderStatus", b =>
                {
                    b.Navigation("Orders");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Product", b =>
                {
                    b.Navigation("OrderDetails");

                    b.Navigation("productColors");

                    b.Navigation("productSizes");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.ProductStatus", b =>
                {
                    b.Navigation("products");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Role", b =>
                {
                    b.Navigation("Users");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.Ship", b =>
                {
                    b.Navigation("orders");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.SizeofShoes", b =>
                {
                    b.Navigation("productSizes");
                });

            modelBuilder.Entity("OnlineShopCoreMVC.Models.User", b =>
                {
                    b.Navigation("Orders");
                });
#pragma warning restore 612, 618
        }
    }
}
