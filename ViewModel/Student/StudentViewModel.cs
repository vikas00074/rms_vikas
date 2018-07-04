// <copyright file="StudentViewModel.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace ViewModel.Student
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public class StudentViewModel
    {
        [Key]
        public long Identifier { get; set; }

        [Required]
        [MaxLength(50)]
        public string FirstName { get; set; }

        [MaxLength(50)]
        public string MiddleName { get; set; }

        [Required]
        [MaxLength(50)]
        public string LastName { get; set; }

        public DateTime? BirthDate { get; set; }

        [Phone]
        public string Phone { get; set; }

        [EmailAddress]
        public string Email { get; set; }

        public string Level { get; set; }

        public string Session { get; set; }

        public string Program { get; set; }
    }
}
