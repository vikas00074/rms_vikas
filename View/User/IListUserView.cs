// <copyright file="IListUserView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

using System.Collections.Generic;
using ViewModel.User;

namespace View
{
    public interface IListUsersView : IViewBase
    {
        void FocusUsernameTextbox();
        void FillUserGrid(IEnumerable<ListUserGridViewModel> data);
        string GetSearchTerm();
    }
}
