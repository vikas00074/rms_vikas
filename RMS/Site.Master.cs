// <copyright file="Site.Master.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS
{
    using System;
    using System.Web;
    using System.Web.UI;
    using Presenter;
    using View;

    public partial class SiteMaster : MasterPage, ISiteView
    {
        private readonly SitePresenter _presenter;

        public SiteMaster()
        {
            _presenter = new SitePresenter(this);
        }

        // VIew implementation

        public void InitCacheConfiguration()
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(60));
        }

        public T GetSessionValue<T>(string value)
        {
            return (T)Session[value];
        }

        public void Redirect(string v)
        {
            Response.Redirect(v);
        }

        public void ShowError(Exception aex)
        {
            pnlError.Visible = true;
            lblError.Text = aex.ToString();
        }

        public void ShowWarning(string message)
        {
            pnlWarning.Visible = true;
            lblWarning.Text = message;
        }

        public void ShowSucess(string message)
        {
            pnlSuccess.Visible = true;
            lblSuccess.Text = message;
        }

        // Handled events

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter.InitCacheConfiguration();
        }

        // Private Methods
    }
}
