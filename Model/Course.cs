// <copyright file="Course.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public class Course
    {
        public long Id { get; set; }

        [StringLength(10)]
        public string course_title { get; set; }

        [Required]
        public int course_level { get; set; }

        public DateTime date_created { get; set; }
    }
}
