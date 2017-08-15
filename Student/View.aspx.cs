// <copyright file="View.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Student
{
    using Presenter.Student;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using View.Student;

    public partial class ViewStudent : Page, IViewStudentView
    {
        private readonly ViewStudentPresenter _presenter;

        public ViewStudent()
        {
            _presenter = new ViewStudentPresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}