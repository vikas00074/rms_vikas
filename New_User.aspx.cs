using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace RMS
{

    public partial class New_User : Page
    {
        MySqlConnection con;
        MySqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString);
                con.Open();
                txtUsername.Focus();
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

                if (txtSname.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: User's Surname";
                }
                else if (txtID.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: User's ID Number";
                }
                else if (txtUsername.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Username";
                }
                else if (txtpassword.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Password";
                }

                else if (txtpassword.Text != txtpassword1.Text)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Password fields do not match. Please retype";
                }
                else
                {
                    cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO cit_users(user_id, title, firstname, surname, username, password, user_profile, date_created, designation, department, phone, email, User_Group)VALUES(@user_id, @title, @firstname, @surname, @username, @password, @user_profile, @date_created, @designation, @department, @phone, @email, @User_Group)";
                    cmd.Parameters.AddWithValue("@user_id", txtID.Text);
                    cmd.Parameters.AddWithValue("@title", DropDownListTitle.Text);
                    cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                    cmd.Parameters.AddWithValue("@surname", txtSname.Text);
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@user_profile", txtProfile.Text);

                    cmd.Parameters.AddWithValue("@date_created", txtDateCreated.Text);
                    cmd.Parameters.AddWithValue("@designation", txtDesignation.Text);
                    cmd.Parameters.AddWithValue("@department", txtDept.Text);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);

                    cmd.Parameters.AddWithValue("@User_Group", "CIT-Users");

                    cmd.ExecuteNonQuery();

                    Label1.Text = "New User Registered";

                    txtID.Text = string.Empty;
                    DropDownListTitle.Text = string.Empty;
                    txtFname.Text = string.Empty;
                    txtSname.Text = string.Empty;
                    txtUsername.Text = string.Empty;
                    txtpassword.Text = string.Empty;
                    txtProfile.Text = string.Empty;

                    txtDateCreated.Text = string.Empty;
                    txtDesignation.Text = string.Empty;
                    txtDept.Text = string.Empty;
                    txtPhone.Text = string.Empty;
                    txtEmail.Text = string.Empty;

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

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtID.Text = string.Empty;
            txtFname.Text = string.Empty;
            txtSname.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtProfile.Text = string.Empty;

            txtDateCreated.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDept.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

        protected void showPassword_Click(object sender, EventArgs e)
        {
            if (txtpassword.TextMode == TextBoxMode.Password)
            {
                txtpassword.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                txtpassword.TextMode = TextBoxMode.Password;
            }
        }
    }
}