// <copyright file="Add.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Course
{
    using System;
    using System.Web.UI;
    using Presenter;
    using View;

    public partial class AddCourse : Page, IAddCourseView
    {
        private readonly AddCoursePresenter _presenter;

        public AddCourse()
        {
            _presenter = new AddCoursePresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            _presenter.PerformSave();
        }

        protected void btnCanc_Click(object sender, EventArgs e)
        {
        }

        public void ShowException(Exception err)
        {
            ((ISiteView)Master).ShowError(err);
        }

        public string GetTitle()
        {
            return txtCourseTitle.Text;
        }

        public int GetLevel()
        {
            return int.Parse(ddlLevel.SelectedValue);
        }

        public void ShowError(string v)
        {
            throw new NotImplementedException();
        }
    }
}