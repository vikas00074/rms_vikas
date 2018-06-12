// <copyright file="IAddCourseView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface IAddCourseView : IViewBase
    {
        void ShowException(Exception err);

        string GetTitle();

        int GetLevel();

        void ShowError(string v);
    }
}
