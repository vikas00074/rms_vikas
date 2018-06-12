// <copyright file="StudentFilter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Dto
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public class StudentFilter
    {
        public string FirstName { get; }

        public string LastName { get; }

        public string Phone { get; }

        public string Email { get; }

        public StudentFilter(string firstName = null, string lastName = null, string phone = null, string email = null)
        {
            FirstName = firstName;
            LastName = lastName;
            Phone = phone;
            Email = email;
        }
    }
}
