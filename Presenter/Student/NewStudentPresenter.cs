// <copyright file="NewStudentPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Student
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View.Student;

    public class NewStudentPresenter : PresenterBase<INewStudentView>
    {
        public NewStudentPresenter(INewStudentView view) : base(view)
        {
        }
    }
}
