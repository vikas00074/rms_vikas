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


        [StringLength(50)]
        public string lastname { get; set; }


        [StringLength(50)]
        public string firstname { get; set; }

        [StringLength(50)]
        public string midname { get; set; }


        [StringLength(50)]
        public string gender { get; set; }

        public DateTime? birthdate { get; set; }

        [StringLength(50)]
        public string phone { get; set; }

        [StringLength(50)]
        public string email { get; set; }


        [StringLength(50)]
        public string program { get; set; }


        [StringLength(50)]
        public string level { get; set; }


        [StringLength(50)]
        public string session { get; set; }

        public DateTime? date_created { get; set; }

        [StringLength(50)]
        public string user_created { get; set; }
    }
}
