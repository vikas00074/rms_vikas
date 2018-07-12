// <copyright file="Update.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Result
{
    using System;
    using System.Data;
    using System.Data.SqlClient;
    using System.Web.UI;

    public partial class Update : Page
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
                    cmd.CommandText = "SELECT * FROM students where student_id like " + "'" + txtStudID.Text + "%'";

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
                cmd.CommandText = "Select * from students where student_id = '" + a + "' ";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "students");

                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtStudID.Text = Convert.ToString(dr[1]);
                    txtStudentName.Text = Convert.ToString(dr[2] + ", " + dr[3]);
                    txtStudentProgram.Text = Convert.ToString(dr[12]);
                    txtStudentLevel.Text = Convert.ToString(dr[13]);
                    txtSession.Text = Convert.ToString(dr[14]);

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
        }

        protected void Load_Courses()
        {
            try
            {
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from results where student_id = '" + txtStudID.Text + "' ";

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

                    txtScore1.Text = dr["score1"].ToString();
                    txtScore2.Text = dr["score2"].ToString();
                    txtScore3.Text = dr["score3"].ToString();
                    txtScore4.Text = dr["score4"].ToString();
                    txtScore5.Text = dr["score5"].ToString();
                    txtScore6.Text = dr["score6"].ToString();
                    txtScore7.Text = dr["score7"].ToString();
                    txtScore8.Text = dr["score8"].ToString();
                    txtScore9.Text = dr["score9"].ToString();
                    txtScore10.Text = dr["score10"].ToString();

                    DropDownListGrade1.Text = dr["grade1"].ToString();
                    DropDownListGrade2.Text = dr["grade2"].ToString();
                    DropDownListGrade3.Text = dr["grade3"].ToString();
                    DropDownListGrade4.Text = dr["grade4"].ToString();
                    DropDownListGrade5.Text = dr["grade5"].ToString();
                    DropDownListGrade6.Text = dr["grade6"].ToString();
                    DropDownListGrade7.Text = dr["grade7"].ToString();
                    DropDownListGrade8.Text = dr["grade8"].ToString();
                    DropDownListGrade9.Text = dr["grade9"].ToString();
                    DropDownListGrade10.Text = dr["grade10"].ToString();

                    dr.Close();
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                txtDateUpdated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                if (txtStudID.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student ID";
                }
                else if (txtStudentProgram.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student Program";
                }
                else if (txtStudentLevel.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student Level";
                }
                else if (txtSession.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Session";
                }
                else
                {
                    cmd = con.CreateCommand();

                    cmd.CommandText = "UPDATE results SET course_id1=@course_id1, score1=@score1, grade1=@grade1, course_id2=@course_id2, score2=@score2, grade2=@grade2, course_id3=@course_id3, score3=@score3, grade3=@grade3, course_id4=@course_id4, score4=@score4, grade4=@grade4, course_id5=@course_id5, score5=@score5, grade5=@grade5, course_id6=@course_id6, score6=@score6, grade6=@grade6, course_id7=@course_id7, score7=@score7, grade7=@grade7, course_id8=@course_id8, score8=@score8, grade8=@grade8, course_id9=@course_id9, score9=@score9, grade9=@grade9, course_id10=@course_id10, score10=@score10, grade10=@grade10, date_updated=@date_updated WHERE student_id = '" + txtStudID.Text + "' ;";

                    cmd.Parameters.AddWithValue("@course_id1", lblCse1.Text);
                    cmd.Parameters.AddWithValue("@score1", txtScore1.Text);
                    cmd.Parameters.AddWithValue("@grade1", DropDownListGrade1.Text);

                    cmd.Parameters.AddWithValue("@course_id2", lblCse2.Text);
                    cmd.Parameters.AddWithValue("@score2", txtScore2.Text);
                    cmd.Parameters.AddWithValue("@grade2", DropDownListGrade2.Text);


                    cmd.Parameters.AddWithValue("@course_id3", lblCse3.Text);
                    cmd.Parameters.AddWithValue("@score3", txtScore3.Text);
                    cmd.Parameters.AddWithValue("@grade3", DropDownListGrade3.Text);

                    cmd.Parameters.AddWithValue("@course_id4", lblCse4.Text);
                    cmd.Parameters.AddWithValue("@score4", txtScore4.Text);
                    cmd.Parameters.AddWithValue("@grade4", DropDownListGrade4.Text);

                    cmd.Parameters.AddWithValue("@course_id5", lblCse5.Text);
                    cmd.Parameters.AddWithValue("@score5", txtScore5.Text);
                    cmd.Parameters.AddWithValue("@grade5", DropDownListGrade5.Text);

                    cmd.Parameters.AddWithValue("@course_id6", lblCse6.Text);
                    cmd.Parameters.AddWithValue("@score6", txtScore6.Text);
                    cmd.Parameters.AddWithValue("@grade6", DropDownListGrade6.Text);

                    cmd.Parameters.AddWithValue("@course_id7", lblCse7.Text);
                    cmd.Parameters.AddWithValue("@score7", txtScore7.Text);
                    cmd.Parameters.AddWithValue("@grade7", DropDownListGrade7.Text);

                    cmd.Parameters.AddWithValue("@course_id8", lblCse8.Text);
                    cmd.Parameters.AddWithValue("@score8", txtScore8.Text);
                    cmd.Parameters.AddWithValue("@grade8", DropDownListGrade8.Text);

                    cmd.Parameters.AddWithValue("@course_id9", lblCse9.Text);
                    cmd.Parameters.AddWithValue("@score9", txtScore9.Text);
                    cmd.Parameters.AddWithValue("@grade9", DropDownListGrade9.Text);

                    cmd.Parameters.AddWithValue("@course_id10", lblCse10.Text);
                    cmd.Parameters.AddWithValue("@score10", txtScore10.Text);
                    cmd.Parameters.AddWithValue("@grade10", DropDownListGrade10.Text);

                    cmd.Parameters.AddWithValue("@date_updated", txtDateUpdated.Text);

                    cmd.ExecuteNonQuery();

                    lblError.Visible = false;
                    Label1.Text = txtStudentName.Text + "'s Result Updated Successfully";
                }

            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }
    }
}