namespace Data
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public partial class Course
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
