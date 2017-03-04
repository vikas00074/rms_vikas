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
    public partial class Default : System.Web.UI.Page
    {
        MySqlConnection con;
        string connectionString;
        MySqlDataReader dr;
        MySqlCommand cmd;

        string a, b, c;

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

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                cmd = con.CreateCommand();
                cmd.CommandText = "Select * from cit_users where username = '" + txtUsername.Text + "' and password= '" + txtpassword.Text + "' ";
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                        txtLogUser.Text = Convert.ToString(dr[3]) + " " + Convert.ToString(dr[4]);
                        txtProfile.Text = Convert.ToString(dr[5]);
                    }
                    a = txtLogUser.Text;
                    Session["Value"] = a;

                    b = txtProfile.Text;
                    Session["Value1"] = b;

                    c = txtUsername.Text;
                    Session["Value3"] = c;

                    Response.Redirect("Homepage.aspx");

                    //Response.Redirect("homepage.aspx?field1=" + lblUser.Text);
                    //Response.Redirect("homepage.aspx?field2=" + lblProfile.Text);

                    con.Close();
                }
                else
                {
                    lblError.Text = "Invalid Login Details! Try Again";
                    lblError.Visible = true;

                    txtUsername.Text = "";
                    txtpassword.Text = "";

                    con.Close();
                    con.Open();

                }

            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
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