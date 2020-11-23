using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace eCommerceGitHub.Models
{
    public partial class CarRentalContext : DbContext
    {
        public CarRentalContext()
            : base("name=CarRentalContext")
        {
        }

        public virtual DbSet<CarImage> CarImages { get; set; }
        public virtual DbSet<CarType> CarTypes { get; set; }
        public virtual DbSet<RentalCar> RentalCars { get; set; }
        public virtual DbSet<UsersTable> UsersTables { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
