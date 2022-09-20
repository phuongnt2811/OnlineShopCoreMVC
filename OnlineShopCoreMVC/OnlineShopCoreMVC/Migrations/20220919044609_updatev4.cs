using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace OnlineShopCoreMVC.Migrations
{
    public partial class updatev4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "user_isactive",
                table: "users",
                type: "bit",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "user_isactive",
                table: "users");
        }
    }
}
