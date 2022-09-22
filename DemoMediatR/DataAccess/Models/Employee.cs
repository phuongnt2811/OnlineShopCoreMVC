using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class Employee
    {
        public int Id { get; set; }
        [Required]
        public string FullName { get; set; }
        [Required]
        public int? Age { get; set; }
        [Required]
        public string? Gender { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string? Address { get; set; }
        [Required]
        public string Role { get; set; }
        [Required]
        public DateTime CreatedDate { get; set; }
    }
}
