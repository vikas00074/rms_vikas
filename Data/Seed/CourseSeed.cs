// <copyright file="CourseSeed.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Seed
{
    using Model;
    using System;
    using System.Collections.Generic;

    internal static class CourseSeed
    {
        internal static IEnumerable<Course> Seed()
        {
            var cou = new Course[]
            {
                new Course()
                {
                    course_title = "A",
                    course_level = 100,
                    date_created = new DateTime(1998, 5, 5)
                },
            };

            return cou;
        }
    }
}
