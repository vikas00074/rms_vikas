using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using View;

namespace Presenter
{
    public class AddCoursePresenter : PresenterBase<IAddCourseView>
    {
        private readonly SqlConnection _conn;

        public AddCoursePresenter(IAddCourseView view)
            : base(view)
        {
            _conn = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void PerformSave()
        {
            try
            {
                _conn.Open();

                var cmd = _conn.CreateCommand();
                cmd.CommandText = "INSERT INTO courses(course_title, course_level, date_created) VALUES (@course_title, @course_level, @date_created)";
                cmd.Parameters.AddWithValue("@course_title", View.CourseTitle);
                cmd.Parameters.AddWithValue("@course_level", View.Level);
                cmd.Parameters.AddWithValue("@date_created", DateTime.Now);

                cmd.ExecuteNonQuery();

                View.FormTitle = "New Course Saved";

                View.ClearFields();
                View.ClearExceptions();
            }
            catch (Exception err)
            {
                View.ShowException(err);
            }
            finally
            {
                _conn.Close();
            }
        }
    }
}
