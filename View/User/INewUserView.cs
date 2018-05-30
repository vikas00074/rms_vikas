// <copyright file="INewUserView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface INewUserView : IViewBase
    {
        string Departament { get; set; }
        string Designation { get; set; }
        string Email { get; set; }
        string Firstname { get; set; }
        string Password { get; set; }
        string Phone { get; set; }
        string Profile { get; set; }
        string Surname { get; set; }
        string Title { get; set; }
        string Username { get; set; }

        void SetTitle(string v);
        void ShowException(Exception err);
        void ClearFields();
        void ClearException();
    }
}
