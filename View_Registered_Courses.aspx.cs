using System;
using System.Web.UI;

using System.Data;
using MySql.Data.MySqlClient;

namespace RMS
{
    public partial class View_Registered_Courses : Page
    {
        MySqlDataReader dr;
        MySqlConnection con;
        MySqlDataAdapter adap;
        DataSet ds1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString);
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
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM students where student_id like " + "'" + txtStudID.Text + "%'";

                    adap = new MySqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "rms");

                    grdStudent.DataSource = ds1.Tables[0];
                    grdStudent.DataBind();

                    PanelStudGrid.Visible = true;
                }
                else
                {
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM students";

                    adap = new MySqlDataAdapter(cmd);
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
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM students where student_id like " + "'" + txtStudID.Text + "%'";

                adap = new MySqlDataAdapter(cmd);
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
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM registered_courses where stud_id like " + "'" + txtStudID.Text + "%'";

                adap = new MySqlDataAdapter(cmd);
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