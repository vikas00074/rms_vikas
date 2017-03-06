using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using Presenter;
using View;

namespace RMS
{
    public partial class Default : Page, ILoginView
    {
        private readonly LoginPresenter _preseter;

        public bool IsPageValid
        {
            get { return Page.IsValid; }
        }

        public string LogUser
        {
            get { return txtLogUser.Text; }
            set { txtLogUser.Text = value; }
        }

        public string Profile
        {
            get { return txtProfile.Text; }
            set { txtProfile.Text = value; }
        }

        public string Username
        {
            get { return txtUsername.Text; }
            set { txtUsername.Text = value; }
        }

        public string Password
        {
            get { return txtpassword.Text; }
            set { txtpassword.Text = value; }
        }

        public Default()
        {
            _preseter = new LoginPresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _preseter.InitPage();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            _preseter.PerformLogin();
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

        public void FocusUsernameField()
        {
            txtUsername.Focus();
        }

        public void SetSessionValue(string v, string text)
        {
            Session[v] = text;
        }

        public void Redirect(string v)
        {
            Response.Redirect(v);
        }

        public void ShowException(ApplicationException aex)
        {
            lblError.Text = aex.Message;
            lblError.Visible = true;
        }

        public void ClearMessages()
        {
            lblError.Visible = false;
            lblError.Text = string.Empty;
        }
    }
}