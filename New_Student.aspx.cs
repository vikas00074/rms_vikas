using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace RMS
{
    public partial class New_Student : Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString);
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
                con.Open();
                txtDateCreated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                if (txtStudID.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's ID";
                }
                else if (txtSname.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Patient's Surname";
                }
                else if (txtProgram.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's Program";
                }
                else if (txtLevel.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's Level";
                }
                else if (txtSession.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Session";
                }
                else
                {
                    cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO students(Student_ID, lastname, firstname, midname, gender, dob_day, dob_month, dob_year, phone, email, program, level, session, date_created, user_created)VALUES(@Student_ID, @lastname, @firstname, @midname, @gender, @dob_day, @dob_month, @dob_year, @phone, @email, @program, @level, @session, @date_created, @user_created)";

                    cmd.Parameters.AddWithValue("@Student_ID", txtStudID.Text);
                    cmd.Parameters.AddWithValue("@lastname", txtSname.Text);
                    cmd.Parameters.AddWithValue("@firstname", txtFName.Text);
                    cmd.Parameters.AddWithValue("@midname", txtMName.Text);
                    cmd.Parameters.AddWithValue("@gender", DropDownListGender.Text);
                    cmd.Parameters.AddWithValue("@dob_day", DropDownListDay.Text);
                    cmd.Parameters.AddWithValue("@dob_month", DropDownListMonth.Text);

                    cmd.Parameters.AddWithValue("@dob_year", DoBYear.Text);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@program", txtProgram.Text);

                    cmd.Parameters.AddWithValue("@level", txtLevel.Text);
                    cmd.Parameters.AddWithValue("@session", txtSession.Text);
                    cmd.Parameters.AddWithValue("@date_created", txtDateCreated.Text);
                    cmd.Parameters.AddWithValue("@user_created", txtUserCreated.Text);

                    cmd.ExecuteNonQuery();

                    Label1.Text = "New Student Registered";

                    txtStudID.Text = string.Empty;
                    txtSname.Text = string.Empty;
                    txtFName.Text = string.Empty;
                    txtMName.Text = string.Empty;
                    DropDownListGender.Text = string.Empty;
                    DropDownListDay.Text = string.Empty;
                    DropDownListMonth.Text = string.Empty;
                    DoBYear.Text = string.Empty;
                    txtPhone.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtProgram.Text = string.Empty;
                    txtLevel.Text = string.Empty;
                    txtSession.Text = string.Empty;
                    txtDateCreated.Text = string.Empty;
                    txtUserCreated.Text = string.Empty;

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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtStudID.Text = string.Empty;
            txtSname.Text = string.Empty;
            txtFName.Text = string.Empty;
            txtMName.Text = string.Empty;
            DropDownListGender.Text = string.Empty;
            DropDownListDay.Text = string.Empty;
            DropDownListMonth.Text = string.Empty;
            DoBYear.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtProgram.Text = string.Empty;
            txtLevel.Text = string.Empty;
            txtSession.Text = string.Empty;
            txtDateCreated.Text = string.Empty;
            txtUserCreated.Text = string.Empty;


            lblError.Visible = false;
        }
    }
}