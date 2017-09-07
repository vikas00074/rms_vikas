// <copyright file="IListCourseView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Course
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface IListCourseView : IViewBase
    {
        void FillGrid(DataTable dataTable);
        void ShowError(string message);
        string GetSearchInput();
    }
}
