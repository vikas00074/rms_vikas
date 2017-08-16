// <copyright file="UsersPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using Data;
    using View;
    using ViewModel.User;

    public class UsersPresenter : PresenterBase<IListUsersView>
    {
        public UsersPresenter(IListUsersView view)
            : base(view)
        {
        }

        public void FocusUsername()
        {
            try
            {
                View.FocusUsernameTextbox();
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public void SearchUsers()
        {
            try
            {
                string input = View.GetSearchTerm();
                IEnumerable<ListUserGridViewModel> users;

                using (var ctx = new ModelContext())
                {
                    users = ctx.users
                        .Where(x => x.surname.StartsWith(input)
                        || x.firstname.StartsWith(input)
                        || x.Id.ToString().StartsWith(input)
                        || x.username.StartsWith(input))
                        .Select(x => new ListUserGridViewModel
                        {
                            Identifier = x.Id,
                            FirstName = x.firstname,
                            SurName = x.surname,
                            Username = x.username,
                            Profile = x.user_profile
                        })
                        .ToArray();
                }

                View.FillUserGrid(users);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
