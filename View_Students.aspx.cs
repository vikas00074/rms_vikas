using System;
using System.Web.UI;

using System.Data;
using System.IO;
using System.Data.SqlClient;

namespace RMS
{
    public partial class View_Students : Page
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandText = "SELECT * FROM students where lastname like " + "'" + txtSearch.Text + "%' or firstname like " + "'" + txtSearch.Text + "%' or student_id = " + "'" + txtSearch.Text + "%' or phone = " + "'" + txtSearch.Text + "' or email = " + "'" + txtSearch.Text + "' ";

                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "student");

                GridView1.DataSource = ds1.Tables[0];
                GridView1.DataBind();

                PanelSearchGrid.Visible = true;
                PanelStudRecord.Visible = false;
                PanelStudMenu.Visible = false;

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
                txtStudID0.Text = id;

                string a = txtStudID0.Text;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from students where Student_ID = '" + a + "' ";
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtStudID.Text = Convert.ToString(dr[1]);

                    txtSname.Text = Convert.ToString(dr[2]);
                    txtFName.Text = Convert.ToString(dr[3]);
                    txtMName.Text = Convert.ToString(dr[4]);
                    DropDownListGender.Text = Convert.ToString(dr[5]);
                    DropDownListDay.Text = Convert.ToString(dr[6]);
                    DropDownListMonth.Text = Convert.ToString(dr[7]);
                    DoBYear.Text = Convert.ToString(dr[8]);
                    txtEmail.Text = Convert.ToString(dr[10]);
                    txtPhone.Text = Convert.ToString(dr[11]);

                    txtProgram.Text = Convert.ToString(dr[12]);
                    txtLevel.Text = Convert.ToString(dr[13]);
                    txtSession.Text = Convert.ToString(dr[14]);
                    txtUserUpdated.Text = Convert.ToString(dr[16]);
                    txtDateUpdated.Text = Convert.ToString(dr[18]);
                }

                PanelSearchGrid.Visible = false;
                PanelStudRecord.Visible = true;
                PanelStudMenu.Visible = true;
                lblError.Visible = false;

                imgStud.Visible = false;

                lblStudData.Text = txtSname.Text + " " + txtFName.Text + ", " + DropDownListGender.Text + ", " + DropDownListDay.Text + "-" + DropDownListMonth.Text + "-" + DoBYear.Text;
                lblStudData1.Text = txtPhone.Text + ", " + txtEmail.Text;

                Label1.Text = "Update " + txtSname.Text + "'s Record";
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void showPicture()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("Select photo from students where Student_ID = '" + txtStudID0.Text + "' ;", con);
                adap = new SqlDataAdapter(cmd);
                ds1 = new DataSet();
                adap.Fill(ds1, "photo");
                int c = ds1.Tables["photo"].Rows.Count;

                if (c > 0)
                {
                    Byte[] byteBlobData = new Byte[0];
                    byteBlobData = (Byte[])(ds1.Tables["photo"].Rows[c - 1]["photo"]);

                    MemoryStream stm = new MemoryStream(byteBlobData);

                    imgStud.ImageUrl = "data:student_image/jpeg;base64," + Convert.ToBase64String(byteBlobData);
                }
            }
            catch (Exception err)
            {
            }

            con.Close();
        }

        protected void lnkLoadPicture_Click(object sender, EventArgs e)
        {
            PanelBrowse.Visible = true;
            PanelImage.Visible = false;
            lblImgReport.Visible = false;
        }

        protected void lnkShowPicture_Click(object sender, EventArgs e)
        {
            showPicture();
            PanelImage.Visible = true;
            imgStud.Visible = true;
            PanelBrowse.Visible = false;
        }

        protected void updatePicture()
        {
            try
            {
                con.Open();
                byte[] imagebyte = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
                FileUpload1.PostedFile.InputStream.Read(imagebyte, 0, imagebyte.Length);

                cmd = new SqlCommand("update students set photo =@image where Student_ID = '" + txtStudID0.Text + "'", con);

                cmd.Parameters.AddWithValue("@image", imagebyte);

                cmd.ExecuteNonQuery();

                lblImgReport.Text = "image loaded successfully";

            }
            catch (Exception err)
            {
                lblImgReport.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void lnkUpdatePicture_Click(object sender, EventArgs e)
        {
            updatePicture();
            lblImgReport.Visible = true;
        }

        protected void lnkClose_Click(object sender, EventArgs e)
        {
            PanelImage.Visible = true;
            PanelBrowse.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                txtDateUpdated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");


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
                    cmd.CommandText = "UPDATE students SET Student_ID=@Student_ID, lastname=@lastname, firstname=@firstname, midname=@midname, gender=@gender, dob_day=@dob_day, dob_month=@dob_month, dob_year=@dob_year, phone=@phone, email=@email, program=@program, level=@level, session=@session, date_updated=@date_updated, user_updated=@user_updated WHERE Student_ID = '" + txtStudID0.Text + "' ;";

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
                    cmd.Parameters.AddWithValue("@date_updated", txtDateUpdated.Text);
                    cmd.Parameters.AddWithValue("@user_updated", txtUserUpdated.Text);

                    cmd.ExecuteNonQuery();

                    lblError.Visible = false;
                    Label1.Text = txtSname.Text + "'s record updated";
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
            PanelSearchGrid.Visible = true;
            PanelStudRecord.Visible = false;
            PanelStudMenu.Visible = false;
        }
    }
}