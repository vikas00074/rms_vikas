// <copyright file="ISiteView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;

    public interface ISiteView : IViewBase
    {
        void InitCacheConfiguration();

        T GetSessionValue<T>(string value);

        void Redirect(string v);

        void ShowError(Exception aex);

        void ShowWarning(string message);

        void ShowSucess(string message);
    }
}
