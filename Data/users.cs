namespace Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class users
    {
        public long Id { get; set; }

        [Required]
        [StringLength(50)]
        public string username { get; set; }

        [Required]
        [StringLength(50)]
        public string password { get; set; }

        [StringLength(50)]
        public string firstname { get; set; }

        [StringLength(50)]
        public string surname { get; set; }

        [StringLength(50)]
        public string user_profile { get; set; }

        [StringLength(50)]
        public string user_id { get; set; }

        [StringLength(50)]
        public string title { get; set; }

        [StringLength(50)]
        public string date_created { get; set; }

        [StringLength(50)]
        public string designation { get; set; }

        [StringLength(50)]
        public string department { get; set; }

        [StringLength(50)]
        public string phone { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [StringLength(50)]
        public string User_Group { get; set; }
    }
}
