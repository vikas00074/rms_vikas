// <copyright file="New.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Result
{
    using System;
    using System.Linq;
    using System.Data;
    using System.Data.SqlClient;
    using System.Web.UI;

    public partial class New : Page
    {
        SqlDataReader dr;
        SqlConnection con;
        SqlCommand cmd;
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
                //lblError.Visible = true;
                //lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnSearchStud_Click(object sender, EventArgs e)
        {

            if (txtStudID.Text != string.Empty)
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM students where Id like " + "'" + txtStudID.Text + "%'";

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

        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            PanelStudGrid.Visible = false;
        }

        protected void grdStudent_SelectedIndexChanged(object sender, EventArgs e)
        {

            con.Open();

            string id = grdStudent.SelectedRow.Cells[0].Text;
            txtStudID.Text = id;

            string a = txtStudID.Text;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * from students where Id = '" + a + "' ";

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


            con.Close();
            Load_Courses();
        }

        protected void Load_Courses()
        {

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select * from registered_courses where stud_id = '" + txtStudID.Text + "' ";

            cmd = new SqlCommand(cmd.CommandText, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblCse1.Text = dr["course_id1"].ToString();
                lblCse2.Text = dr["course_id2"].ToString();
                lblCse3.Text = dr["course_id3"].ToString();
                lblCse4.Text = dr["course_id4"].ToString();
                lblCse5.Text = dr["course_id5"].ToString();
                lblCse6.Text = dr["course_id6"].ToString();
                lblCse7.Text = dr["course_id7"].ToString();
                lblCse8.Text = dr["course_id8"].ToString();
                lblCse9.Text = dr["course_id9"].ToString();
                lblCse10.Text = dr["course_id10"].ToString();

                dr.Close();
            }


            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
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

                    cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO results(student_id, program, level, session, course_id1, score1, grade1, course_id2, score2, grade2, course_id3, score3, grade3, date_created)" +
                        "VALUES(@student_id, @program, @level, @session, @course_id1, @score1, @grade1, @course_id2, @score2, @grade2, @course_id3, @score3, @grade3, @date_created)";
                    cmd.Parameters.AddWithValue("@student_id", txtStudID.Text);
                    cmd.Parameters.AddWithValue("@program", txtStudentProgram.Text);
                    cmd.Parameters.AddWithValue("@level", txtStudentLevel.Text);
                    cmd.Parameters.AddWithValue("@session", txtSession.Text);

                    cmd.Parameters.AddWithValue("@course_id1", lblCse1.Text);
                    cmd.Parameters.AddWithValue("@score1", txtScore1.Text);
                    cmd.Parameters.AddWithValue("@grade1", DropDownListGrade1.Text);

                    cmd.Parameters.AddWithValue("@course_id2", lblCse2.Text);
                    cmd.Parameters.AddWithValue("@score2", txtScore2.Text);
                    cmd.Parameters.AddWithValue("@grade2", DropDownListGrade2.Text);

                    cmd.Parameters.AddWithValue("@course_id3", lblCse3.Text);
                    cmd.Parameters.AddWithValue("@score3", txtScore3.Text);
                    cmd.Parameters.AddWithValue("@grade3", DropDownListGrade3.Text);

                    cmd.Parameters.AddWithValue("@date_created", txtDateCreated.Text);

                    cmd.ExecuteNonQuery();

                    txtStudID.Text = string.Empty;
                    txtStudentProgram.Text = string.Empty;
                    txtStudentLevel.Text = string.Empty;
                    txtSession.Text = string.Empty;

                    txtDateCreated.Text = string.Empty;

                    lblError.Visible = false;
                    Label1.Text = txtStudentName.Text + "'s Result Uploaded Successfully";
                }
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnCanc_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            PanelStudGrid.Visible = true;
        }
    }
}