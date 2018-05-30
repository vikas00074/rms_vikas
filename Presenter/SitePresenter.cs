// <copyright file="SitePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View;

    public class SitePresenter : PresenterBase<ISiteView>
    {
        public SitePresenter(ISiteView view)
            : base(view)
        {
        }

        public void InitCacheConfiguration()
        {
            try
            {
                View.InitCacheConfiguration();
            }
            catch (ApplicationException aex)
            {
                View.ShowError(aex);
            }
        }

        public void CheckIsUserLogged()
        {
            try
            {
                string userLogger = View.GetSessionValue<string>("Value");
                if (userLogger == string.Empty)
                {
                    View.Redirect("Default.aspx");
                }
                else
                {
                    View.SetLoggedUser(userLogger);
                }
            }
            catch (ApplicationException aex)
            {
                View.ShowError(aex);
            }
        }

        public void PerformLogOut()
        {
            try
            {
                View.SetLoggedUser(string.Empty);
                View.FinishSession();
            }
            catch (ApplicationException aex)
            {
                View.ShowError(aex);
            }
        }
    }
}
