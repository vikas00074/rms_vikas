// <copyright file="List.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Course
{
    using System;
    using System.Collections.Generic;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Presenter.Course;
    using View;
    using View.Course;
    using ViewModel.Course;

    public partial class List : Page, IListCourseView
    {
        private readonly ListCoursePresenter _presenter;

        public List()
        {
            _presenter = new ListCoursePresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter.LoadCourses();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            _presenter.LoadCourses();
        }

        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        SqlCommand cmd;
        //        con.Open();
        //        txtDateUpdated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

        //        if (txtCourseId.Text == string.Empty)
        //        {
        //            Label1.Visible = false;
        //            lblError.Visible = true;
        //            lblError.Text = "Mandatory Field is empty: Course ID";
        //        }
        //        else if (DropDownListLevel.Text == string.Empty)
        //        {
        //            Label1.Visible = false;
        //            lblError.Visible = true;
        //            lblError.Text = "Mandatory Field is empty: Course Level";
        //        }
        //        else
        //        {
        //            cmd = con.CreateCommand();
        //            cmd.CommandText = "UPDATE courses SET course_id=@course_id, course_title=@course_title, course_level=@course_level, date_updated=@date_updated WHERE course_id = '" + txtCourseId.Text + "' ;";

        //            cmd.Parameters.AddWithValue("@course_id", txtCourseId.Text);
        //            cmd.Parameters.AddWithValue("@course_title", txtCourseTitle.Text);
        //            cmd.Parameters.AddWithValue("@course_level", DropDownListLevel.Text);
        //            cmd.Parameters.AddWithValue("@date_updated", txtDateUpdated.Text);

        //            cmd.ExecuteNonQuery();

        //            lblError.Visible = false;
        //            Label1.Text = txtCourseTitle.Text + "'s record updated";
        //        }
        //    }
        //    catch (Exception err)
        //    {
        //        lblError.Visible = true;
        //        lblError.Text = "Error: " + err.Message;
        //    }

        //    con.Close();
        //}

        protected void ddlPageSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageIndex = ((DropDownList)sender).SelectedIndex;
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Trace.Write("GridView1_RowEditing");
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            Trace.Write("GridView1_RowUpdated");

            if (e.Exception != null)
            {
                ShowError(e.Exception);
                e.ExceptionHandled = true;
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Trace.Write("GridView1_RowUpdating");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Trace.Write("GridView1_RowDeleting");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Trace.Write("GridView1_RowDeleted");
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Trace.Write("GridView1_RowCancelingEdit");
        }

        public void SetGridData(IEnumerable<ListCourseGridViewModel> vm)
        {
            GridView1.DataSource = vm;
            GridView1.DataBind();
        }

        public void ShowError(Exception ex)
        {
            ((ISiteView)Master).ShowError(ex);
        }

        public string GetSearchInput()
        {
            return txtSearch.Text;
        }
    }
}