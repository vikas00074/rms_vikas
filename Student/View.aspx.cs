// <copyright file="View.aspx.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.Student
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Presenter.Student;
    using View.Student;

    public partial class ViewStudent : Page, IViewStudentView
    {
        private readonly ViewStudentPresenter _presenter;

        public ViewStudent()
        {
            _presenter = new ViewStudentPresenter(this);
        }

        // Implementacion de la vista.

        /// <inheritdoc/>
        public string GetQueryStringValue(string key)
        {
            return Request.QueryString[key];
        }

        /// <inheritdoc/>
        public void ShowError(string v)
        {
            throw new NotImplementedException();
        }

        /// <inheritdoc/>
        public void ShowException(Exception ex)
        {
            throw new NotImplementedException();
        }

        /// <inheritdoc/>
        public void SetIdentifier(long identifier)
        {
            txtStudID.Text = identifier.ToString();
        }

        /// <inheritdoc/>
        public void SetFirstName(string firstName)
        {
            txtFName.Text = firstName;
        }

        /// <inheritdoc/>
        public void SetMiddleName(string middleName)
        {
            txtMName.Text = middleName;
        }

        /// <inheritdoc/>
        public void SetLastName(string lastName)
        {
            txtSname.Text = lastName;
        }

        /// <inheritdoc/>
        public void SetBirthDate(DateTime? birthDate)
        {
            txtBirthdate.Text = birthDate.HasValue
                ? birthDate.Value.ToShortDateString()
                : string.Empty;
        }

        /// <inheritdoc/>
        public void SetPhone(string phone)
        {
            txtPhone.Text = phone;
        }

        /// <inheritdoc/>
        public void SetEmail(string email)
        {
            txtEmail.Text = email;
        }

        /// <inheritdoc/>
        public void SetLevel(string level)
        {
            txtLevel.Text = level;
        }

        /// <inheritdoc/>
        public void SetSession(string session)
        {
            txtSession.Text = session;
        }

        /// <inheritdoc/>
        public void SetProgram(string program)
        {
            txtProgram.Text = program;
        }

        // Eventos de la pagina

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter.LoadStudent();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}