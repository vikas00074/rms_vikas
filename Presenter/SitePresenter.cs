// <copyright file="SitePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
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
    }
}
