// <copyright file="CourseBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic
{
    using System;
    using System.Linq;
    using System.Collections.Generic;
    using BusinessLogic.Contracts;
    using Data;
    using Dto.Filters;
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

        public IEnumerable<ListCourseGridViewModel> GetCourses(CourseFilter filter)
        {
            IEnumerable<ListCourseGridViewModel> result = null;

            using (var ctx = new ModelContext())
            {
                var query = ctx.Courses.AsQueryable();

                result = query
                    .Select(x => new ListCourseGridViewModel
                    {
                        Id = x.Id,
                        Title = x.course_title,
                        Level = x.course_level
                    })
                    .ToArray();
            }

            return result;
        }
    }
}
