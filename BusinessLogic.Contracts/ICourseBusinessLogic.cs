// <copyright file="ICourseBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic.Contracts
{
    using System.Collections.Generic;
    using Dto.Filters;
    using ViewModel.Course;

    public interface ICourseBusinessLogic : IBusinessLogicBase
    {
        void AddCourse(CourseViewModel course);

        IEnumerable<ListCourseGridViewModel> GetCourses(CourseFilter filter);
    }
}
