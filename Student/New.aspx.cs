namespace RMS.Student
{
    using System;
    using System.Web.UI;
    using Presenter;
    using View;

    public partial class New : Page, INewResultView
    {
        private readonly NewResultPresenter _presenter;

        public string Surname
        {
            get { return txtSurname.Text; }
            set { txtSurname.Text = value; }
        }

        public string FirstName
        {
            get { return txtFName.Text; }
            set { txtFName.Text = value; }
        }

        public string MiddleName
        {
            get { return txtMName.Text; }
            set { txtMName.Text = value; }
        }

        public string Gender
        {
            get { return DropDownListGender.Text; }
            set { DropDownListGender.Text = value; }
        }

        public DateTime DateOfBirth
        {
            get
            {
                try
                {
                    return DateTime.Parse(txtDateOfBirth.Text);
                }
                catch (ArgumentNullException anex)
                {
                    throw new ApplicationException("La fecha esta vacia", anex);
                }
                catch (FormatException fex)
                {
                    throw new ApplicationException("La fecha tiene un formato incorrecto.", fex);
                }
                
            }
            set { txtDateOfBirth.Text = value.ToShortDateString(); }
        }

        public string Phone
        {
            get { return txtPhone.Text; }
            set { txtPhone.Text = value; }
        }

        public string Email
        {
            get { return txtEmail.Text; }
            set { txtEmail.Text = value; }
        }

        public string Program
        {
            get { return txtProgram.Text; }
            set { txtProgram.Text = value; }
        }

        public string Level
        {
            get { return txtLevel.Text; }
            set { txtLevel.Text = value; }
        }

        string INewResultView.Session
        {
            get { return txtSession.Text; }
            set { txtSession.Text = value; }
        }

        string INewResultView.Title
        {
            set { lblTitle.Text = value; }
        }

        public string LoggedUser
        {
            get
            {
                return (string)Session["Value"];
            }
        }

        public New()
        {
            _presenter = new NewResultPresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            _presenter.Save();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFields();
            ClearMessages();
        }

        public void ClearFields()
        {
            txtSurname.Text = string.Empty;
            txtFName.Text = string.Empty;
            txtMName.Text = string.Empty;
            DropDownListGender.Text = string.Empty;
            txtDateOfBirth.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtProgram.Text = string.Empty;
            txtLevel.Text = string.Empty;
            txtSession.Text = string.Empty;
        }

        public void ClearMessages()
        {
            lblError.Text = string.Empty;
            lblError.Visible = false;
        }

        public void ShowException(Exception aex)
        {
            lblError.Visible = true;
            lblError.Text = aex.Message;
        }
    }
}