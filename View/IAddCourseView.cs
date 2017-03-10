using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace View
{
    public interface IAddCourseView : IViewBase
    {
        string CourseTitle { get; set; }
        string FormTitle { get; set; }
        string Level { get; set; }

        void ClearExceptions();
        void ShowException(Exception err);
        void ClearFields();
    }
}
