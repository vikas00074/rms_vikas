// <copyright file="AddCoursePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using View;
    using ViewModel.Course;

    public class AddCoursePresenter : PresenterBase<IAddCourseView>
    {
        public AddCoursePresenter(IAddCourseView view)
            : base(view)
        {
        }

        public void PerformSave()
        {
            try
            {
                string title = View.GetTitle();
                int level = View.GetLevel();

                CourseViewModel vm = new CourseViewModel();
                vm.Title = title;
                vm.Level = level;

                var bl = Service.Get<ICourseBusinessLogic>();
                bl.AddCourse(vm);
            }
            catch (ApplicationException aex)
            {
                View.ShowError(aex.ToString());
            }
            catch (Exception err)
            {
                View.ShowException(err);
            }
        }
    }
}
