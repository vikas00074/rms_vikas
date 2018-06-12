// <copyright file="registered_courses.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class registered_courses
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long stud_id { get; set; }

        [StringLength(10)]
        public string program { get; set; }

        [StringLength(10)]
        public string level { get; set; }

        [StringLength(10)]
        public string session { get; set; }

        [StringLength(10)]
        public string course_id1 { get; set; }

        [StringLength(10)]
        public string course_id2 { get; set; }

        [StringLength(10)]
        public string course_id3 { get; set; }

        [StringLength(10)]
        public string course_id4 { get; set; }

        [StringLength(10)]
        public string course_id5 { get; set; }

        [StringLength(10)]
        public string course_id6 { get; set; }

        [StringLength(10)]
        public string course_id7 { get; set; }

        [StringLength(10)]
        public string course_id8 { get; set; }

        [StringLength(10)]
        public string course_id9 { get; set; }

        [StringLength(10)]
        public string course_id10 { get; set; }

        public DateTime? date_created { get; set; }
    }
}
