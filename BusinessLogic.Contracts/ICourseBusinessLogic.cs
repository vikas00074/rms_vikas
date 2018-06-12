// <copyright file="ICourseBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic.Contracts
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using ViewModel.Course;

    public interface ICourseBusinessLogic : IBusinessLogicBase
    {
        void AddCourse(CourseViewModel course);
    }
}
