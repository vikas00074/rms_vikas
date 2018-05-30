// <copyright file="ListStudentPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Student
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Data;
    using View.Student;
    using ViewModel.Student;

    public class ListStudentPresenter : PresenterBase<IListStudentView>
    {
        public ListStudentPresenter(IListStudentView view)
            : base(view)
        {
        }

        public void SearchStudent()
        {
            try
            {
                string firstName = View.GetFirstName();
                string lastName = View.GetLastName();
                string phone = View.GetPhone();
                string email = View.GetEmail();

                IEnumerable<ListStudentGridViewModel> gridData;

                using (var ctx = new ModelContext())
                {
                    var query = ctx.Students.AsQueryable();

                    if (!string.IsNullOrWhiteSpace(firstName)) query = query.Where(x => x.firstname.StartsWith(firstName));
                    if (!string.IsNullOrWhiteSpace(lastName)) query = query.Where(x => x.lastname.StartsWith(lastName));
                    if (!string.IsNullOrWhiteSpace(phone)) query = query.Where(x => x.phone.StartsWith(phone));
                    if (!string.IsNullOrWhiteSpace(email)) query = query.Where(x => x.email.StartsWith(email));

                    gridData = query.Select(x => new ListStudentGridViewModel
                    {
                        Identifier = x.Id,
                        FirstName = x.firstname,
                        LastName = x.lastname,
                        Phone = x.phone,
                        Email = x.email
                    })
                    .ToArray();
                }

                if (gridData == null)
                {
                    gridData = new List<ListStudentGridViewModel>();
                }
                else
                {
                    gridData = new List<ListStudentGridViewModel>(gridData);
                }

                View.SetGridData(gridData);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
