using Presenter.Controls;
using Presenter.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using View.Controls;
using System.Data;

namespace RMS.Controls
{
    public partial class SearchUsersUserControl : UserControl, ISearchUserControlView
    {
        public event EventHandler<UserSearchException> OnException;

        private readonly SearchUserControlPresenter _presenter;

        public string InputUser
        {
            get { return txtSearch.Text; }
            set { txtSearch.Text = value; }
        }

        public SearchUsersUserControl()
        {
            _presenter = new SearchUserControlPresenter(this);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            _presenter.SearchUser();
        }

        public void ShowException(Exception ex)
        {
            lblError.Visible = true;
            lblError.Text = "Error: " + ex.Message;

            _presenter.RaiseException(ex);
        }

        public void RaiseExceptionEvent(Exception exp)
        {
            OnException?.Invoke(this, exp as UserSearchException);
        }

        public void GridDataSource(DataSet ds1)
        {
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();
        }

        public void ShowUserGrid()
        {
            UpdatePanel1.Visible = true;
        }

        public void ClearExceptions()
        {
            lblError.Visible = false;
        }
    }
}