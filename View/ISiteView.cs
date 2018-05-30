// <copyright file="ISiteView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface ISiteView : IViewBase
    {
        void InitCacheConfiguration();

        T GetSessionValue<T>(string value);

        void SetLoggedUser(string userLogger);

        void Redirect(string v);

        void ShowError(Exception aex);

        void ShowSucess(string message);

        void FinishSession();
    }
}
