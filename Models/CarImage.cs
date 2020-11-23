namespace eCommerceGitHub.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CarImage
    {
        [Key]
        [Column(Order = 0)]
        public Guid ID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string ImageTag { get; set; }

        [Column("CarImage", TypeName = "image")]
        public byte[] CarImage1 { get; set; }

        public int? ParentCarID { get; set; }
    }
}
