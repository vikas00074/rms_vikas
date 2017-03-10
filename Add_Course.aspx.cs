using System;
using System.Web.UI;
using View;
using Presenter;

namespace RMS
{
    public partial class Add_Course : Page, IAddCourseView
    {
        private readonly AddCoursePresenter _presenter;

        public string CourseTitle
        {
            get { return txtCourseTitle.Text; }
            set { txtCourseTitle.Text = value; }
        }

        public string FormTitle
        {
            get { return Label1.Text; }
            set { Label1.Text = value; }
        }

        public string Level
        {
            get { return DropDownListLevel.Text; }
            set { DropDownListLevel.Text = value; }
        }

        public Add_Course()
        {
            _presenter = new AddCoursePresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            _presenter.PerformSave();
        }

        protected void btnCanc_Click(object sender, EventArgs e)
        {
            ClearFields();
        }

        public void ClearExceptions()
        {
            lblError.Visible = false;
            lblError.Text = string.Empty;
        }

        public void ShowException(Exception err)
        {
            lblError.Visible = true;
            lblError.Text = "Error: " + err.Message;
        }

        public void ClearFields()
        {
            txtCourseTitle.Text = string.Empty;
            DropDownListLevel.Text = string.Empty;
        }
    }
}