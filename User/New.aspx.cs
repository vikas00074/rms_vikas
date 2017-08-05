// <copyright file="New.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.User
{
    using System;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Presenter;
    using View;

    public partial class New : Page, INewUserView
    {
        private readonly NewUserPresenter _presenter;

        public string Departament
        {
            get { return txtDept.Text; }
            set { txtDept.Text = value; }
        }

        public string Designation
        {
            get { return txtDesignation.Text; }
            set { txtDesignation.Text = value; }
        }

        public string Email
        {
            get { return txtEmail.Text; }
            set { txtEmail.Text = value; }
        }

        public string Firstname
        {
            get { return txtFname.Text; }
            set { txtFname.Text = value; }
        }

        public string Password
        {
            get { return txtpassword.Text; }
            set { txtpassword.Text = value; }
        }

        public string Phone
        {
            get { return txtPhone.Text; }
            set { txtPhone.Text = value; }
        }

        public string Profile
        {
            get { return txtProfile.Text; }
            set { txtProfile.Text = value; }
        }

        public string Surname
        {
            get { return txtSname.Text; }
            set { txtSname.Text = value; }
        }

        public string Username
        {
            get { return txtUsername.Text; }
            set { txtUsername.Text = value; }
        }

        public New()
        {
            _presenter = new NewUserPresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            _presenter.PerformSave();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearFields();
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

        public void SetTitle(string v)
        {
            lblTitle.Text = v;
        }

        public void ShowException(Exception err)
        {
            lblError.Visible = true;
            lblError.Text = "Error: " + err.Message + Environment.NewLine + "Trace: " + err.StackTrace;
        }

        public void ClearFields()
        {
            DropDownListTitle.Text = string.Empty;
            txtFname.Text = string.Empty;
            txtSname.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtProfile.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDept.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

        public void ClearException()
        {
            lblError.Text = string.Empty;
            lblError.Visible = false;
        }
    }
}