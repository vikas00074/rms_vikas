// <copyright file="RegisterCourses.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS
{
    using Presenter.RegisterCourse;
    using System;
    using System.Data;
    using System.Data.SqlClient;
    using System.Web.UI;
    using View.RegisterCourse;

    public partial class RegisterCourses : Page, IRegisterCourseView
    {
        SqlDataReader dr;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds1;
        private readonly RegisterCoursePresenter _presenter;

        public RegisterCourses()
        {
            _presenter = new RegisterCoursePresenter(this);
        }

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

                string id = grdStudent.SelectedRow.Cells[0].Text;
                txtStudID.Text = id;

                string a = txtStudID.Text;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from students where id = '" + a + "' ";

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
                    Panel4.Visible = true;

                    dr.Close();
                }
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
            Load_Courses();
            txt_courses();
        }

        protected void Load_Courses()
        {
            try
            {
                con.Open();
                drpCourse1.Items.Clear();
                drpCourse2.Items.Clear();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from courses where course_level LIKE '%" + txtStudentLevel.Text + "%' ";
                var adap = new SqlDataAdapter(cmd);
                var table = new DataTable();
                adap.Fill(table);

                drpCourse1.DataSource = table;
                drpCourse1.DataTextField = "id";
                drpCourse1.DataValueField = "id";
                drpCourse1.DataBind();

                drpCourse2.DataSource = table;
                drpCourse2.DataTextField = "id";
                drpCourse2.DataValueField = "id";
                drpCourse2.DataBind();

                drpCourse3.DataSource = table;
                drpCourse3.DataTextField = "id";
                drpCourse3.DataValueField = "id";
                drpCourse3.DataBind();

                drpCourse4.DataSource = table;
                drpCourse4.DataTextField = "id";
                drpCourse4.DataValueField = "id";
                drpCourse4.DataBind();

                drpCourse5.DataSource = table;
                drpCourse5.DataTextField = "id";
                drpCourse5.DataValueField = "id";
                drpCourse5.DataBind();

                drpCourse6.DataSource = table;
                drpCourse6.DataTextField = "id";
                drpCourse6.DataValueField = "id";
                drpCourse6.DataBind();

                drpCourse7.DataSource = table;
                drpCourse7.DataTextField = "id";
                drpCourse7.DataValueField = "id";
                drpCourse7.DataBind();

                drpCourse8.DataSource = table;
                drpCourse8.DataTextField = "id";
                drpCourse8.DataValueField = "id";
                drpCourse8.DataBind();

                drpCourse9.DataSource = table;
                drpCourse9.DataTextField = "id";
                drpCourse9.DataValueField = "id";
                drpCourse9.DataBind();

                drpCourse10.DataSource = table;
                drpCourse10.DataTextField = "id";
                drpCourse10.DataValueField = "id";
                drpCourse10.DataBind();
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            txtDateCreated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

            if (txtStudID.Text == string.Empty)
            {
                Label1.Visible = false;
                lblError.Visible = true;
                lblError.Text = "Mandatory Field is empty: Student ID";
            }
            else if (txtStudentProgram.Text == string.Empty)
            {
                Label1.Visible = false;
                lblError.Visible = true;
                lblError.Text = "Mandatory Field is empty: Student Program";
            }
            else if (txtStudentLevel.Text == string.Empty)
            {
                Label1.Visible = false;
                lblError.Visible = true;
                lblError.Text = "Mandatory Field is empty: Student Level";
            }
            else if (txtSession.Text == string.Empty)
            {
                Label1.Visible = false;
                lblError.Visible = true;
                lblError.Text = "Mandatory Field is empty: Session";
            }
            else
            {
                txt_courses();

                cmd = con.CreateCommand();
                cmd.CommandText = "INSERT INTO registered_courses(stud_id, program, level, session, course_id1, course_id2, course_id3, course_id4, course_id5, course_id6, course_id7, course_id8, course_id9, course_id10, date_created)VALUES(@stud_id, @program, @level, @session, @course_id1, @course_id2, @course_id3, @course_id4, @course_id5, @course_id6, @course_id7, @course_id8, @course_id9, @course_id10, @date_created)";
                cmd.Parameters.AddWithValue("@stud_id", txtStudID.Text);
                cmd.Parameters.AddWithValue("@program", txtStudentProgram.Text);
                cmd.Parameters.AddWithValue("@level", txtStudentLevel.Text);
                cmd.Parameters.AddWithValue("@session", txtSession.Text);
                cmd.Parameters.AddWithValue("@course_id1", txtbox1.Text);
                cmd.Parameters.AddWithValue("@course_id2", txtbox2.Text);
                cmd.Parameters.AddWithValue("@course_id3", txtbox3.Text);
                cmd.Parameters.AddWithValue("@course_id4", txtbox4.Text);
                cmd.Parameters.AddWithValue("@course_id5", txtbox5.Text);
                cmd.Parameters.AddWithValue("@course_id6", txtbox6.Text);
                cmd.Parameters.AddWithValue("@course_id7", txtbox7.Text);
                cmd.Parameters.AddWithValue("@course_id8", txtbox8.Text);
                cmd.Parameters.AddWithValue("@course_id9", txtbox9.Text);
                cmd.Parameters.AddWithValue("@course_id10", txtbox10.Text);
                cmd.Parameters.AddWithValue("@date_created", txtDateCreated.Text);

                cmd.ExecuteNonQuery();

                Label1.Text = "New User Registered";

                txtStudID.Text = string.Empty;
                txtStudentProgram.Text = string.Empty;
                txtStudentLevel.Text = string.Empty;
                txtSession.Text = string.Empty;

                txtDateCreated.Text = string.Empty;

                lblError.Visible = false;
                Label1.Text = txtStudentName.Text + "'s Courses Registered Successfully";
            }

            con.Close();
        }

        protected void btnCanc_Click(object sender, EventArgs e)
        {
            txtStudID.Text = string.Empty;
            txtStudentProgram.Text = string.Empty;
            txtStudentLevel.Text = string.Empty;
            txtSession.Text = string.Empty;

            txtDateCreated.Text = string.Empty;
        }

        protected void txt_courses()
        {
            txtbox1.Text = drpCourse1.SelectedItem.Text.ToString();
            txtbox2.Text = drpCourse2.SelectedItem.Text.ToString();
            txtbox3.Text = drpCourse3.SelectedItem.Text.ToString();
            txtbox4.Text = drpCourse4.SelectedItem.Text.ToString();
            txtbox5.Text = drpCourse5.SelectedItem.Text.ToString();
            txtbox6.Text = drpCourse6.SelectedItem.Text.ToString();
            txtbox7.Text = drpCourse7.SelectedItem.Text.ToString();
            txtbox8.Text = drpCourse8.SelectedItem.Text.ToString();
            txtbox9.Text = drpCourse9.SelectedItem.Text.ToString();
            txtbox10.Text = drpCourse10.SelectedItem.Text.ToString();
        }
    }
}