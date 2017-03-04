using System;
using System.Web;
using System.Web.UI;

namespace RMS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(60));

            string a;
            a = (string)(Session["Value"]);
            lblLogUser.Text = a;

            if (lblLogUser.Text == string.Empty)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            lblLogUser.Text = string.Empty;
            Session.Abandon();
            Session.Clear();
        }
    }
}
