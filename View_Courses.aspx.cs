using System;
using System.Web.UI;

using System.Data;
using System.Data.SqlClient;

namespace RMS
{
    public partial class View_Courses : Page
    {
        SqlDataReader dr;
        SqlConnection con;
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
            Load_Courses();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                Panel3.Visible = false;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM courses where course_id like " + "'" + txtSearch.Text + "%' or course_title like " + "'" + txtSearch.Text + "%' or course_level like " + "'" + txtSearch.Text + "%'";

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

        protected void Load_Courses()
        {
            try
            {
                con.Open();
                Panel3.Visible = false;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM courses where course_id like " + "'" + txtSearch.Text + "%' or course_title like " + "'" + txtSearch.Text + "%' or course_level like " + "'" + txtSearch.Text + "%'";

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
                txtCseID.Text = id;

                string a = txtCseID.Text;

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from courses where course_id = '" + a + "' ";
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtCourseId.Text = Convert.ToString(dr[1]);
                    txtCourseTitle.Text = Convert.ToString(dr[2]);
                    DropDownListLevel.Text = Convert.ToString(dr[3]);
                }

                PanelSearchGrid.Visible = false;
                Panel3.Visible = true;

                Label1.Text = "Update " + txtCourseTitle.Text;
                btnCanc.Focus();
            }
            catch (Exception err)
            {
                lblError.Visible = true;
                lblError.Text = "Error: " + err.Message;
            }

            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd;
                con.Open();
                txtDateUpdated.Text = DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");

                if (txtCourseId.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Course ID";
                }
                else if (DropDownListLevel.Text == string.Empty)
                {
                    Label1.Visible = false; lblError.Visible = true; lblError.Text = "Mandatory Field is empty: Course Level";
                }
                else
                {
                    cmd = con.CreateCommand();
                    cmd.CommandText = "UPDATE courses SET course_id=@course_id, course_title=@course_title, course_level=@course_level, date_updated=@date_updated WHERE course_id = '" + txtCourseId.Text + "' ;";

                    cmd.Parameters.AddWithValue("@course_id", txtCourseId.Text);
                    cmd.Parameters.AddWithValue("@course_title", txtCourseTitle.Text);
                    cmd.Parameters.AddWithValue("@course_level", DropDownListLevel.Text);
                    cmd.Parameters.AddWithValue("@date_updated", txtDateUpdated.Text);

                    cmd.ExecuteNonQuery();

                    lblError.Visible = false;
                    Label1.Text = txtCourseTitle.Text + "'s record updated";
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
    }
}