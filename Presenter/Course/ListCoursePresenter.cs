// <copyright file="ListCoursePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Course
{
    using System;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using Dto.Filters;
    using View.Course;

    public class ListCoursePresenter : PresenterBase<IListCourseView>
    {
        public ListCoursePresenter(IListCourseView view)
            : base(view)
        {
        }

        public void LoadCourses()
        {
            try
            {
                var bl = Service.Get<ICourseBusinessLogic>();

                var filter = new CourseFilter();
                var griddata = bl.GetCourses(filter);

                View.SetGridData(griddata);
            }
            catch (Exception err)
            {
                View.ShowError(err);
            }
        }
    }
}
