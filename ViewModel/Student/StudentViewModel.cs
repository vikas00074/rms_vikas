// <copyright file="StudentViewModel.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace ViewModel.Student
{
    using System;

    public class StudentViewModel
    {
        public long Identifier { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string LastName { get; set; }

        public DateTime? BirthDate { get; set; }

        public string Phone { get; set; }

        public string Email { get; set; }

        public string Level { get; set; }

        public string Session { get; set; }

        public string Program { get; set; }
    }
}
