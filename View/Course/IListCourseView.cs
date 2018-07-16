// <copyright file="IListCourseView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Course
{
    using System;
    using System.Collections.Generic;
    using ViewModel.Course;

    public interface IListCourseView : IViewBase
    {
        void SetGridData(IEnumerable<ListCourseGridViewModel> vm);

        void ShowError(Exception ex);

        string GetSearchInput();
    }
}
