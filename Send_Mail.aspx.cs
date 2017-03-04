using System;
using System.Web.UI;

using System.Data;
using MySql.Data.MySqlClient;

using System.Net.Mail;

namespace RMS
{
    public partial class Send_Mail : Page
    {
        MySqlConnection con;
        MySqlDataAdapter adap;
        DataSet ds1;
        DataRow drow;
        int inc;
        int maxrows;

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

        protected void btnGrpMail_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Visible = false;
                con.Open();
                Panel4.Visible = true;
                txtToName.Text = DropDownListGroup.Text;

                if (DropDownListGroup.Text == "CIT-Users")
                {
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT email FROM cit_users where User_Group like " + "'" + DropDownListGroup.Text + "%' ";

                    adap = new MySqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "emailAdd");
                    inc = 0;
                    maxrows = 0;
                    maxrows = ds1.Tables["emailAdd"].Rows.Count;
                    drow = ds1.Tables["emailAdd"].Rows[inc];
                    txtTo.Text = drow.ItemArray.GetValue(0).ToString();

                    for (inc = 1; inc < maxrows; inc++)
                    {
                        drow = ds1.Tables["emailAdd"].Rows[inc];
                        txtTo.Text = txtTo.Text + " " + drow.ItemArray.GetValue(0).ToString();
                    }
                }

                else if (DropDownListGroup.Text == "Management")
                {
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT email FROM cit_users where User_Group like " + "'" + DropDownListGroup.Text + "%' ";

                    adap = new MySqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "emailAdd");

                    inc = 0;
                    maxrows = 0;
                    maxrows = ds1.Tables["emailAdd"].Rows.Count;

                    drow = ds1.Tables["emailAdd"].Rows[inc];
                    txtTo.Text = drow.ItemArray.GetValue(0).ToString();

                    for (inc = 1; inc < maxrows; inc++)
                    {
                        drow = ds1.Tables["emailAdd"].Rows[inc];
                        txtTo.Text = txtTo.Text + "; " + drow.ItemArray.GetValue(0).ToString();
                    }
                }

                else
                {
                    lblMessage.Text = "No Email Records to load";
                }
                con.Close();
            }

            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
        }

        protected void SendGroupEmail()
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
                    sc.Credentials = new System.Net.NetworkCredential(txtCred1.Text, "BeyHealth2010");

                    sc.EnableSsl = bool.Parse(txtSSL.Text); // runtime encrypt the SMTP communications using SSL
                    sc.Send(m);
                }
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }
        }

        protected void SearchEmailAddress_SendMail()
        {
            try
            {
                Panel4.Visible = true;
                txtToName.Text = DropDownListGroup.Text;

                if (DropDownListGroup.Text == "CIT-Users")
                {
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT email FROM cit_users where User_Group like " + "'" + DropDownListGroup.Text + "%' ";

                    adap = new MySqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "emailAdd");

                    inc = 0;
                    maxrows = 0;
                    maxrows = ds1.Tables["emailAdd"].Rows.Count;

                    drow = ds1.Tables["emailAdd"].Rows[inc];
                    txtTo.Text = drow.ItemArray.GetValue(0).ToString();

                    for (inc = 1; inc < maxrows; inc++)
                    {
                        SendGroupEmail();
                        drow = ds1.Tables["emailAdd"].Rows[inc];
                        txtTo.Text = drow.ItemArray.GetValue(0).ToString();
                        con.Close();
                    }
                }

                else if (DropDownListGroup.Text == "Management")
                {
                    MySqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT email FROM cit_users where User_Group like " + "'" + DropDownListGroup.Text + "%' ";

                    adap = new MySqlDataAdapter(cmd);
                    ds1 = new DataSet();
                    adap.Fill(ds1, "emailAdd");

                    inc = 0;
                    maxrows = 0;
                    maxrows = ds1.Tables["emailAdd"].Rows.Count;

                    drow = ds1.Tables["emailAdd"].Rows[inc];
                    txtTo.Text = drow.ItemArray.GetValue(0).ToString();

                    for (inc = 1; inc < maxrows; inc++)
                    {
                        SendGroupEmail();
                        drow = ds1.Tables["emailAdd"].Rows[inc];
                        txtTo.Text = drow.ItemArray.GetValue(0).ToString();
                        con.Close();
                    }
                }

                else
                {
                    lblMessage.Text = "No Email Records to load";
                }
                con.Open();

                txtDateEmail.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                MySqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandText = "INSERT INTO emails(from_email, from_name, to_email, to_name, cc_email, cc_name, subject, body, date_sent)VALUES(@from_email, @from_name, @to_email, @to_name, @cc_email, @cc_name, @subject, @body, @date_sent)";

                cmd1.Parameters.AddWithValue("@from_email", txtFrom.Text);
                cmd1.Parameters.AddWithValue("@from_name", txtFromName.Text);
                cmd1.Parameters.AddWithValue("@to_email", txtTo.Text);
                cmd1.Parameters.AddWithValue("@to_name", txtToName.Text);
                cmd1.Parameters.AddWithValue("@cc_email", txtCc.Text);
                cmd1.Parameters.AddWithValue("@cc_name", txtCcName.Text);
                cmd1.Parameters.AddWithValue("@subject", txtSubject.Text);
                cmd1.Parameters.AddWithValue("@body", txtBody.Text);
                cmd1.Parameters.AddWithValue("@date_sent", txtDateEmail.Text);

                cmd1.ExecuteNonQuery();

                lblMessage.Text = "Message sent successfully";
                lblError.Visible = false;

                txtTo.Text = string.Empty;
                txtToName.Text = string.Empty;
                txtCc.Text = string.Empty;
                txtSubject.Text = string.Empty;
                txtBody.Text = string.Empty;

                con.Close();
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
                //lblError.Text = err.Message;
            }
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            SearchEmailAddress_SendMail();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtTo.Text = string.Empty;
        }
    }
}