using FirstDemo.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstDemo.Entities
{
    public class StudentDbContext : DbContext
    {
        public DbSet<Student> Students { get; set; }
        public DbSet<Major> Majors { get; set; }

        public StudentDbContext(DbContextOptions<StudentDbContext> options) : base(options)
        {

        }

        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    optionsBuilder.UseSqlServer("Server=DESKTOP-NJ7UQOV;Database=StudentDb;User Id=sa;Password=123456;MultipleActiveResultSets=True;TrustServerCertificate=True;");
        //}
    }
}
