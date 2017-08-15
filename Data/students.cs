namespace Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class students
    {
        public long Id { get; set; }

        [Required]
        [StringLength(10)]
        public string lastname { get; set; }

        [Required]
        [StringLength(10)]
        public string firstname { get; set; }

        [StringLength(10)]
        public string midname { get; set; }

        [Required]
        [StringLength(10)]
        public string gender { get; set; }

        [Column(TypeName = "date")]
        public DateTime birthdate { get; set; }

        [StringLength(10)]
        public string phone { get; set; }

        [StringLength(10)]
        public string email { get; set; }

        [Required]
        [StringLength(10)]
        public string program { get; set; }

        [Required]
        [StringLength(10)]
        public string level { get; set; }

        [Required]
        [StringLength(10)]
        public string session { get; set; }

        public DateTime date_created { get; set; }

        [Required]
        [StringLength(10)]
        public string user_created { get; set; }
    }
}
