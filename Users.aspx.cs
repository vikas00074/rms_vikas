using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Net.Mail;
using System.Data.SqlClient;

namespace RMS
{
    public partial class Users : Page
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

                txtUsername.Focus();
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                Panel3.Visible = false;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM cit_users where surname like " + "'" + txtSearch.Text + "%' or firstname like " + "'" + txtSearch.Text + "%' or user_id like " + "'" + txtSearch.Text + "%' or username like " + "'" + txtSearch.Text + "%'";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();

                PanelSearchGrid.Visible = true;

                lblError.Visible = false;
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string id = GridView1.SelectedRow.Cells[0].Text;
                txtID.Text = id;

                string a = txtID.Text;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from cit_users where user_id = '" + a + "' ";
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtID.Text = Convert.ToString(dr[1]);
                    txtFname.Text = Convert.ToString(dr[3]);
                    txtSname.Text = Convert.ToString(dr[4]);
                    txtUsername.Text = Convert.ToString(dr[5]);
                    txtpassword.Text = Convert.ToString(dr[6]);
                    txtProfile.Text = Convert.ToString(dr[7]);

                    txtDesignation.Text = Convert.ToString(dr[9]);
                    txtDept.Text = Convert.ToString(dr[8]);
                    txtPhone.Text = Convert.ToString(dr[10]);
                    txtEmail.Text = Convert.ToString(dr[11]);
                    DropDownListTitle.Text = Convert.ToString(dr[2]);
                }

                PanelSearchGrid.Visible = false;
                Panel3.Visible = true;

                Label1.Text = "Amend " + txtUsername.Text + "'s Record";
                btnCanc.Focus();

            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void lnkSendMail_Click(object sender, EventArgs e)
        {
            PanelSearchGrid.Visible = false;
            Panel3.Visible = false;
            PanelEmail.Visible = true;
            PanelEmailSetup.Visible = false;
            lblError.Visible = false;

            txtTo.Text = txtEmail.Text;
            txtToName.Text = txtSname.Text + " " + txtFname.Text;
            btnCancelEmail.Focus();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd;
                con.Open();
                txtAmendDate.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                if (txtID.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: User's ID Number";
                }
                else if (txtSname.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: User's Surname";
                }
                else if (txtpassword.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: User Password";
                }

                else
                {
                    cmd = con.CreateCommand();
                    cmd.CommandText = "UPDATE cit_users SET title=@title, firstname=@firstname, surname=@surname, username=@username, password=@password, user_profile=@user_profile, date_amended=@date_amended, designation=@designation, department=@department, phone=@phone, email=@email, User_Group=@User_Group WHERE user_id = '" + txtID.Text + "' ;";

                    cmd.Parameters.AddWithValue("@title", DropDownListTitle.Text);
                    cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                    cmd.Parameters.AddWithValue("@surname", txtSname.Text);
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@user_profile", txtProfile.Text);
                    cmd.Parameters.AddWithValue("@date_amended", txtAmendDate.Text);

                    cmd.Parameters.AddWithValue("@designation", txtDesignation.Text);
                    cmd.Parameters.AddWithValue("@department", txtDept.Text);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);

                    cmd.Parameters.AddWithValue("@User_Group", "CIT-Users");

                    cmd.ExecuteNonQuery();

                    lblError.Visible = false;
                    Label1.Text = txtUsername.Text + "'s record updated";
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
            PanelSearchGrid.Visible = true;
            Panel3.Visible = false;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                MailMessage m = new MailMessage();
                SmtpClient sc = new SmtpClient();

                if (txtCc.Text != string.Empty)
                {
                    m.CC.Add(new MailAddress(txtCc.Text, txtCcName.Text));
                }
                else
                {
                    m.From = new MailAddress(txtFrom.Text, txtFromName.Text);
                    m.To.Add(new MailAddress(txtTo.Text, txtToName.Text));
                }

                m.Subject = txtSubject.Text;
                m.Body = txtBody.Text;

                if (txtSubject.Text == string.Empty)
                {
                    lblMessage.Visible = false; lblError.Visible = true; lblError.Text = "Subject Field is empty";
                }
                else if (txtBody.Text == string.Empty)
                {
                    lblMessage.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Email Body";
                }

                else
                {
                    //section 5
                    sc.Host = txtHost.Text;
                    sc.Port = int.Parse(txtPort.Text);
                    sc.Credentials = new System.Net.NetworkCredential(txtCred1.Text, txtCred2.Text);
                    sc.EnableSsl = bool.Parse(txtSSL.Text); // runtime encrypt the SMTP communications using SSL
                    sc.Send(m);


                    txtDateEmail.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                    cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO emails(from_email, from_name, to_email, to_name, cc_email, cc_name, subject, body, date_sent)VALUES(@from_email, @from_name, @to_email, @to_name, @cc_email, @cc_name, @subject, @body, @date_sent)";

                    cmd.Parameters.AddWithValue("@from_email", txtFrom.Text);
                    cmd.Parameters.AddWithValue("@from_name", txtFromName.Text);
                    cmd.Parameters.AddWithValue("@to_email", txtTo.Text);
                    cmd.Parameters.AddWithValue("@to_name", txtToName.Text);
                    cmd.Parameters.AddWithValue("@cc_email", txtCc.Text);
                    cmd.Parameters.AddWithValue("@cc_name", txtCcName.Text);
                    cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
                    cmd.Parameters.AddWithValue("@body", txtBody.Text);
                    cmd.Parameters.AddWithValue("@date_sent", txtDateEmail.Text);

                    cmd.ExecuteNonQuery();

                    lblMessage.Text = "Message sent successfully";
                    lblError.Visible = false;
                }

                txtTo.Text = string.Empty;
                txtToName.Text = string.Empty;
                txtCc.Text = string.Empty;
                txtSubject.Text = string.Empty;
                txtBody.Text = string.Empty;
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnCancelEmail_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            Panel3.Visible = true;
            PanelEmail.Visible = false;
            PanelEmailSetup.Visible = false;
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