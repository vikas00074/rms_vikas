// <copyright file="IListStudentView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Student
{
    using ViewModel.Student;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface IListStudentView : IViewBase
    {
        string GetSearchCondition();

        void SetGridData(IEnumerable<ListStudentGridViewModel> gridData);
    }
}
