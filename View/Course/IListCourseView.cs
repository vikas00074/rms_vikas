// <copyright file="IListCourseView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Course
{
    using System;
    using System.Data;

    public interface IListCourseView : IViewBase
    {
        void FillGrid(DataTable dataTable);

        void ShowError(Exception ex);

        string GetSearchInput();
    }
}
