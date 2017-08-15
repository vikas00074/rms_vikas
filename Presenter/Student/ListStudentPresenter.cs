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
                IEnumerable<ListStudentGridViewModel> gridData;
                string input = View.GetSearchCondition();

                using (var ctx = new ModelContext())
                {
                    gridData = ctx.students
                        .Where(x => x.firstname.StartsWith(input)
                        || x.lastname.StartsWith(input)
                        || x.phone.StartsWith(input)
                        || x.email.StartsWith(input))
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
