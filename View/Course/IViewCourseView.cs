// <copyright file="IViewCourse.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Course
{
    using System.Data;

    public interface IViewCourseView : IViewBase
    {
        int Id { get; }

        void SetCourseData(long id, string title, string level);
        void BindRelatedStudents(DataTable tbl);
    }
}
