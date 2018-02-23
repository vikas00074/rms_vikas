// <copyright file="RegisterCoursePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.RegisterCourse
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View.RegisterCourse;

    public class RegisterCoursePresenter : PresenterBase<IRegisterCourseView>
    {
        public RegisterCoursePresenter(IRegisterCourseView view)
            : base(view)
        {
        }
    }
}
