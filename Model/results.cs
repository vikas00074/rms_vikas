// <copyright file="results.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class results
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long student_id { get; set; }

        [StringLength(10)]
        public string program { get; set; }

        [StringLength(10)]
        public string level { get; set; }

        [StringLength(10)]
        public string session { get; set; }

        [StringLength(10)]
        public string course_id1 { get; set; }

        [StringLength(10)]
        public string score1 { get; set; }

        [StringLength(10)]
        public string grade1 { get; set; }

        [StringLength(10)]
        public string course_id2 { get; set; }

        [StringLength(10)]
        public string score2 { get; set; }

        [StringLength(10)]
        public string grade2 { get; set; }

        [StringLength(10)]
        public string course_id3 { get; set; }

        [StringLength(10)]
        public string score3 { get; set; }

        [StringLength(10)]
        public string grade3 { get; set; }

        public DateTime? date_created { get; set; }
    }
}
