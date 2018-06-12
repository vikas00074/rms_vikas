// <copyright file="ViewStudentPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Student
{
    using System;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using View.Student;

    public class ViewStudentPresenter : PresenterBase<IViewStudentView>
    {
        public ViewStudentPresenter(IViewStudentView view)
            : base(view)
        {
        }

        public void LoadStudent()
        {
            try
            {
                var id = View.GetQueryStringValue("Id");

                if (string.IsNullOrWhiteSpace(id))
                {
                    return;
                }

                long parsedId;
                if (!long.TryParse(id, out parsedId))
                {
                    string msg = string.Format("No se puede convertir el valor {0} a numero.", id);
                    throw new ApplicationException(msg);
                }

                var bl = Service.Get<IStudentBusinessLogic>();

                var student = bl.GetStudent(parsedId);

                if (student == null)
                {
                    string msg = string.Format("No se encontro un estudiante para el identificador {0}.", parsedId);
                    throw new ApplicationException(msg);
                }

                View.SetIdentifier(student.Identifier);
                View.SetFirstName(student.FirstName);
                View.SetMiddleName(student.MiddleName);
                View.SetLastName(student.LastName);
                View.SetBirthDate(student.BirthDate);
                View.SetPhone(student.Phone);
                View.SetEmail(student.Email);
                View.SetLevel(student.Level);
                View.SetSession(student.Session);
                View.SetProgram(student.Program);
            }
            catch (ApplicationException aex)
            {
                View.ShowError(aex.ToString());
            }
            catch (Exception ex)
            {
                View.ShowException(ex);
            }
        }
    }
}
