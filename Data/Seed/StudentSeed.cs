// <copyright file="StudentSeed.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Seed
{
    using Model;
    using System;
    using System.Collections.Generic;

    internal static class StudentSeed
    {
        internal static IEnumerable<Student> Seed()
        {
            var stu = new Student[]
            {
                new Student()
                {
                    firstname = "John",
                    lastname = "Smith",
                    phone = "555-9874",
                    email = "john.smith@example.com"
                },
                new Student()
                {
                    firstname = "Margaret",
                    midname = "Hanna",
                    lastname = "Wilkinson",
                    phone = "444-8976",
                    email = "mh.wilkinson@example.com"
                },
                new Student()
                {
                    firstname = "Pete",
                    lastname = "Ferguson",
                    birthdate = new DateTime(1978,3,21),
                    phone = "445-7136",
                    email = "p.ferguson@example.com"
                }
            };

            return stu;
        }
    }
}
