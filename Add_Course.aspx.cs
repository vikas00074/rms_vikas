using System;
using System.Web.UI;
using System.Data;
using MySql.Data.MySqlClient;

namespace RMS
{
    public partial class Add_Course : Page
    {
        MySqlConnection con;

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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlCommand cmd;
                con.Open();
                txtDateCreated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                if (txtCourseId.Text == string.Empty)
                {
                    Label1.Visible = false;
                    lblError.Visible = true;
                    lblError.Text = "Mandatory Field is empty: Course ID";
                }
                else if (DropDownListLevel.Text == string.Empty)
                {
                    Label1.Visible = false;
                    lblError.Visible = true;
                    lblError.Text = "Mandatory Field is empty: Course Level";
                }
                else
                {
                    cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO courses(course_id, course_title, course_level, date_created)VALUES(@course_id, @course_title, @course_level, @date_created)";
                    cmd.Parameters.AddWithValue("@course_id", txtCourseId.Text);
                    cmd.Parameters.AddWithValue("@course_title", txtCourseTitle.Text);
                    cmd.Parameters.AddWithValue("@course_level", DropDownListLevel.Text);
                    cmd.Parameters.AddWithValue("@date_created", txtDateCreated.Text);

                    cmd.ExecuteNonQuery();

                    Label1.Text = "New Course Saved";

                    txtCourseId.Text = string.Empty;
                    txtCourseTitle.Text = string.Empty;
                    DropDownListLevel.Text = string.Empty;

                    lblError.Visible = false;
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
            txtCourseId.Text = string.Empty;
            txtCourseTitle.Text = string.Empty;
            DropDownListLevel.Text = string.Empty;
        }
    }
}