namespace eCommerceGitHub.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UsersTable")]
    public partial class UsersTable
    {
        [Key]
        [Column(Order = 0)]
        public Guid ID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string UserEmail { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(50)]
        public string UserPassword { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(50)]
        public string FirstName { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(50)]
        public string LastName { get; set; }

        [Key]
        [Column(Order = 5)]
        public bool CanRentCar { get; set; }
    }
}
