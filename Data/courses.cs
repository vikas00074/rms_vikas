namespace Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class courses
    {
        public long Id { get; set; }

        [StringLength(10)]
        public string course_title { get; set; }

        [Required]
        [StringLength(10)]
        public string course_level { get; set; }

        public DateTime date_created { get; set; }
    }
}
