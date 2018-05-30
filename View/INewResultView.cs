// <copyright file="INewResultView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public interface INewResultView : IViewBase
    {
        DateTime DateOfBirth { get; set; }
        string Email { get; set; }
        string FirstName { get; set; }
        string Gender { get; set; }
        string Level { get; set; }
        string LoggedUser { get; }
        string MiddleName { get; set; }
        string Phone { get; set; }
        string Program { get; set; }
        string Session { get; set; }
        string Surname { get; set; }
        string Title { set; }

        void ClearFields();
        void ClearMessages();
        void ShowException(Exception aex);
    }
}
