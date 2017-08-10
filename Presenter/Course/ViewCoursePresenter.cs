// <copyright file="ViewCoursePresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter.Course
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View.Course;

    public class ViewCoursePresenter : PresenterBase<IViewCourseView>
    {
        private readonly SqlConnection _conn;

        public ViewCoursePresenter(IViewCourseView view)
            : base(view)
        {
            _conn = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void LoadCourse()
        {
            try
            {
                _conn.Open();
                var cmd = _conn.CreateCommand();
                cmd.CommandText = "SELECT Id, course_title, course_level FROM courses WHERE Id = @id";
                cmd.Parameters.AddWithValue("@id", View.Id);

                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                DataTable tbl = new DataTable();
                adap.Fill(tbl);

                long id = tbl.Rows[0].Field<long>("Id");
                string title = tbl.Rows[0].Field<string>("course_title");
                string level = tbl.Rows[0].Field<string>("course_level");

                View.SetCourseData(id, title, level);

                _conn.Close();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                TryCloseConnection();
            }
        }

        public void LoadRelatedStudents()
        {
            try
            {
                _conn.Open();
                var cmd = _conn.CreateCommand();
                cmd.CommandText = "SELECT Id, course_title, course_level FROM courses WHERE Id = @id";
                cmd.Parameters.AddWithValue("@id", View.Id);

                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                DataTable tbl = new DataTable();
                adap.Fill(tbl);

                View.BindRelatedStudents(tbl);

                _conn.Close();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                TryCloseConnection();
            }
        }

        private void TryCloseConnection()
        {
            if (_conn != null && _conn.State == ConnectionState.Open)
            {
                _conn.Close();
            }
        }
    }
}
