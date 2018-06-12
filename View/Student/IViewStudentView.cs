// <copyright file="IViewStudentView.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace View.Student
{
    using System;

    public interface IViewStudentView : IViewBase
    {
        string GetQueryStringValue(string key);

        void ShowError(string v);

        void ShowException(Exception ex);

        void SetIdentifier(long identifier);

        void SetFirstName(string firstName);

        void SetMiddleName(string middleName);

        void SetLastName(string lastName);

        void SetBirthDate(DateTime? birthDate);

        void SetPhone(string phone);

        void SetEmail(string email);

        void SetLevel(string level);

        void SetSession(string session);

        void SetProgram(string program);
    }
}
