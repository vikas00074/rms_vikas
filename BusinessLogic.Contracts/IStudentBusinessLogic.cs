// <copyright file="IStudentBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic.Contracts
{
    using System.Collections.Generic;
    using Dto;
    using ViewModel.Student;

    public interface IStudentBusinessLogic : IBusinessLogicBase
    {
        IEnumerable<ListStudentGridViewModel> GetStudents(StudentFilter filter);

        StudentViewModel GetStudent(long parsedId);
    }
}