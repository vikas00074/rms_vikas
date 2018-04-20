// <copyright file="Login.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS
{
    using System;
    using System.Web.UI;
    using Presenter;
    using View;

    public partial class Login : Page, ILoginView
    {
        private readonly LoginPresenter _preseter;

        public bool IsPageValid
        {
            get { return Page.IsValid; }
        }

        public string LogUser
        {
            get { return hidLogUser.Value; }
            set { hidLogUser.Value = value; }
        }

        public string Profile
        {
            get { return hidProfile.Value; }
            set { hidProfile.Value = value; }
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

        public Login()
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
            litMessageContent.Text = aex.Message;
            litMessageContent.Visible = true;
        }

        public void ClearMessages()
        {
            litMessageContent.Visible = false;
            litMessageContent.Text = string.Empty;
        }
    }
}