// <copyright file="List.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Course
{
    using System;
    using System.Data;
    using System.Data.SqlClient;
    using System.Diagnostics;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public partial class List : Page
    {
        SqlDataReader dr;
        SqlConnection con;
        SqlDataAdapter adap;
        DataSet ds1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(Properties.Settings.Default.SqlServer);
                con.Open();
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
            Load_Courses();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM courses where Id like " + "'" + txtSearch.Text + "%' or course_title like " + "'" + txtSearch.Text + "%' or course_level like " + "'" + txtSearch.Text + "%'";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();

                lblError.Visible = false;
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void Load_Courses()
        {
            try
            {
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM courses where Id like " + "'" + txtSearch.Text + "%' or course_title like " + "'" + txtSearch.Text + "%' or course_level like " + "'" + txtSearch.Text + "%'";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();

                lblError.Visible = false;
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
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

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            var pagerRow = GridView1.BottomPagerRow;
            var pagerList = pagerRow.Cells[0].FindControl("ddlPageSelector") as DropDownList;
            var pagerLbl = pagerRow.Cells[0].FindControl("lblCurrentPage") as Label;

            if (pagerList != null)
            {
                for (int index = 0; index == GridView1.PageCount - 1; index++)
                {
                    int pagNumber = index + 1;
                    ListItem item = new ListItem(pagNumber.ToString());

                    if (GridView1.PageIndex == index)
                    {
                        item.Selected = true;
                    }

                    pagerList.Items.Add(item);
                }
            }

            if (pagerLbl != null)
            {
                int currPag = GridView1.PageIndex + 1;
                pagerLbl.Text = string.Format("Pagina {0} de {1}.", currPag, GridView1.PageCount);
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Trace.Write("GridView1_RowEditing");

            lblError.Text = string.Empty;
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            Trace.Write("GridView1_RowUpdated");

            if (e.Exception != null)
            {
                lblError.Visible = true;
                lblError.Text = e.Exception.Message;
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
    }
}