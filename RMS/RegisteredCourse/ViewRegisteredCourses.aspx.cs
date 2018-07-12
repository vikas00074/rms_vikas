// <copyright file="ViewRegisteredCourses.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS
{
    using System;
    using System.Data;
    using System.Data.SqlClient;
    using System.Web.UI;

    public partial class View_Registered_Courses : Page
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
        }

        protected void btnSearchStud_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtStudID.Text != string.Empty)
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM students where id like " + "'" + txtStudID.Text + "%'";

                    adap = new SqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "rms");

                    grdStudent.DataSource = ds1.Tables[0];
                    grdStudent.DataBind();

                    PanelStudGrid.Visible = true;
                }
                else
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM students";

                    adap = new SqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "rms");

                    grdStudent.DataSource = ds1.Tables[0];
                    grdStudent.DataBind();

                    PanelStudGrid.Visible = true;
                }
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
        }

        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            PanelStudGrid.Visible = false;
        }

        protected void grdStudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM students where id like " + "'" + txtStudID.Text + "%'";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "students");

                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtStudID.Text = Convert.ToString(dr["id"]);
                    txtStudentName.Text = Convert.ToString(dr["firstname"] + ", " + dr["lastname"]);
                    txtStudentProgram.Text = Convert.ToString(dr["program"]);
                    txtStudentLevel.Text = Convert.ToString(dr["level"]);
                    txtSession.Text = Convert.ToString(dr["session"]);

                    PanelStudGrid.Visible = false;

                    dr.Close();
                }
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
            Load_RegGrid();
        }

        protected void Load_RegGrid()
        {
            try
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM registered_courses where stud_id like " + "'" + txtStudID.Text + "%'";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                grdRegCse.DataSource = ds1.Tables[0];
                grdRegCse.DataBind();

                PanelStudGrid.Visible = false;
                PanelRegCse.Visible = true;
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
        }

        protected void Load_RegCourses()
        {
        }
    }
}