// <copyright file="Update.aspx.cs" company="RMS">
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

    public partial class UpdateStudent : Page, IUpdateStudentView
    {
        private readonly UpdateStudentPresenter _presenter;

        public UpdateStudent()
        {
            _presenter = new UpdateStudentPresenter(this);
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