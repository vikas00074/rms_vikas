// <copyright file="CourseBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic
{
    using System;
    using BusinessLogic.Contracts;
    using Data;
    using Model;
    using ViewModel.Course;

    internal class CourseBusinessLogic : BusinessLogicBase, ICourseBusinessLogic
    {
        public void AddCourse(CourseViewModel vm)
        {
            var ent = new Course();
            ent.course_title = vm.Title;
            ent.course_level = vm.Level;
            ent.date_created = DateTime.Now;

            using (var ctx = new ModelContext())
            {
                ctx.Courses.Add(ent);

                ctx.SaveChanges();
            }
        }
    }
}
