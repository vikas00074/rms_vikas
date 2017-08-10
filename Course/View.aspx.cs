// <copyright file="View.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Course
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Presenter.Course;
    using View.Course;

    public partial class ViewCourse : Page, IViewCourseView
    {
        private readonly ViewCoursePresenter _presenter;

        public ViewCourse()
        {
            _presenter = new ViewCoursePresenter(this);
        }

        public int Id
        {
            get
            {
                string qs = Request.QueryString["id"];
                return int.Parse(qs);
            }
        }

        public void BindRelatedStudents(DataTable tbl)
        {
            gvRelatedStudents.DataSource = tbl;
            gvRelatedStudents.DataBind();
        }

        public void SetCourseData(long id, string title, string level)
        {
            litIdentifier.Text = id.ToString();
            litName.Text = title;
            litLevel.Text = level;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter.LoadCourse();
            _presenter.LoadRelatedStudents();
        }
    }
}