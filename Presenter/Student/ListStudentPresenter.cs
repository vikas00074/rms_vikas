// <copyright file="ListStudentPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Student
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using Data;
    using Dto;
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

                var bl = Service.Get<IStudentBusinessLogic>();

                var filter = new StudentFilter(firstName, lastName, phone, email);
                IEnumerable<ListStudentGridViewModel> gridData = bl.GetStudents(filter);

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
                View.ShowError(ex);
            }
        }
    }
}
