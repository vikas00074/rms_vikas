// <copyright file="IListStudentView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Student
{
    using System;
    using System.Collections.Generic;
    using ViewModel.Student;

    public interface IListStudentView : IViewBase
    {
        string GetFirstName();

        void SetGridData(IEnumerable<ListStudentGridViewModel> gridData);

        void ShowError(Exception ex);

        void ShowSuccess(string message);
        string GetLastName();
        string GetPhone();
        string GetEmail();
    }
}
