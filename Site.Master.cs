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

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter.InitCacheConfiguration();
            _presenter.CheckIsUserLogged();
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            _presenter.PerformLogOut();
        }

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

        public void SetLoggedUser(string userLogger)
        {
            //hlLogUser.Text = userLogger;
        }

        public void Redirect(string v)
        {
            Response.Redirect(v);
        }

        public void ShowException(Exception aex)
        {
            pnlError.Visible = true;
            lblError.Text = aex.Message;
        }

        public void FinishSession()
        {
            Session.Abandon();
            Session.Clear();
        }
    }
}
