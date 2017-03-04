using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;

namespace RMS
{
    public partial class New_Student : System.Web.UI.Page
    {
        string connectionString;
        MySqlDataReader dr;

        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter adap;
        DataSet ds1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString);

                //connectionString = "Server=localhost;Database=noun_result_sys;Uid=root;Pwd=password;";
                //con = new MySqlConnection(connectionString);
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


                if (txtStudID.Text == "") { Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's ID"; }
                else if (txtSname.Text == "") { Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Patient's Surname"; }
                else if (txtProgram.Text == "") { Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's Program"; }
                else if (txtLevel.Text == "") { Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Student's Level"; }
                else if (txtSession.Text == "") { Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Session"; }

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

                    txtStudID.Text = "";
                    txtSname.Text = "";
                    txtFName.Text = "";
                    txtMName.Text = "";
                    DropDownListGender.Text = "";
                    DropDownListDay.Text = "";
                    DropDownListMonth.Text = "";
                    DoBYear.Text = "";
                    txtPhone.Text = "";
                    txtEmail.Text = "";
                    txtProgram.Text = "";
                    txtLevel.Text = "";
                    txtSession.Text = "";
                    txtDateCreated.Text = "";
                    txtUserCreated.Text = "";
                    

                    lblError.Visible = false;

                }

            }
            catch (Exception err)
            {
                //Label1.Text = ("Error:{0}", err.Message);
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
            con.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtStudID.Text = "";
            txtSname.Text = "";
            txtFName.Text = "";
            txtMName.Text = "";
            DropDownListGender.Text = "";
            DropDownListDay.Text = "";
            DropDownListMonth.Text = "";
            DoBYear.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtProgram.Text = "";
            txtLevel.Text = "";
            txtSession.Text = "";
            txtDateCreated.Text = "";
            txtUserCreated.Text = "";


            lblError.Visible = false;
        }

    
    
    }
}