// <copyright file="StudentBusinessLogic.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic
{
    using System.Collections.Generic;
    using System.Linq;
    using BusinessLogic.Contracts;
    using Data;
    using Dto;
    using ViewModel.Student;

    internal class StudentBusinessLogic : BusinessLogicBase, IStudentBusinessLogic
    {
        public StudentViewModel GetStudent(long parsedId)
        {
            using (var ctx = new ModelContext())
            {
                var a = ctx.Students.SingleOrDefault(x => x.Id == parsedId);
                var ret = new StudentViewModel();
                ret.Identifier = a.Id;
                ret.FirstName = a.firstname;
                ret.MiddleName = a.midname;
                ret.LastName = a.lastname;
                ret.BirthDate = a.birthdate;
                ret.Phone = a.phone;
                ret.Email = a.email;
                ret.Level = a.level;
                ret.Session = a.session;
                ret.Program = a.program;

                return ret;
            }
        }

        public IEnumerable<ListStudentGridViewModel> GetStudents(StudentFilter filter)
        {
            using (var ctx = new ModelContext())
            {
                var query = ctx.Students.AsQueryable();

                if (!string.IsNullOrWhiteSpace(filter.FirstName)) query = query.Where(x => x.firstname.StartsWith(filter.FirstName));
                if (!string.IsNullOrWhiteSpace(filter.LastName)) query = query.Where(x => x.lastname.StartsWith(filter.LastName));
                if (!string.IsNullOrWhiteSpace(filter.Phone)) query = query.Where(x => x.phone.StartsWith(filter.Phone));
                if (!string.IsNullOrWhiteSpace(filter.Email)) query = query.Where(x => x.email.StartsWith(filter.Email));

                return query
                    .Select(x => new ListStudentGridViewModel
                    {
                        Identifier = x.Id,
                        FirstName = x.firstname,
                        LastName = x.lastname,
                        Phone = x.phone,
                        Email = x.email
                    })
                    .ToArray();
            }
        }
    }
}
