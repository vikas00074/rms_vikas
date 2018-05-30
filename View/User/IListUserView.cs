// <copyright file="IListUserView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;
    using System.Collections.Generic;
    using ViewModel.User;

    public interface IListUsersView : IViewBase
    {
        void FocusUsernameTextbox();
        void FillUserGrid(IEnumerable<ListUserGridViewModel> data);
        string GetSearchTerm();
        void ShowError(Exception ex);
    }
}
