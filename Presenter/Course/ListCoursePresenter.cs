// <copyright file="ListCoursePresenter.cs" company="RMS">
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

    public class ListCoursePresenter : PresenterBase<IListCourseView>
    {
        private readonly SqlConnection con;

        public ListCoursePresenter(IListCourseView view)
            : base(view)
        {
            con = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void LoadCourses()
        {
            try
            {
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "SELECT * FROM courses where Id like '@id%' or course_title like '@title%' or course_level like '@level%'";
                cmd.Parameters.AddWithValue("@id", View.GetSearchInput());
                cmd.Parameters.AddWithValue("@title", View.GetSearchInput());
                cmd.Parameters.AddWithValue("@level", View.GetSearchInput());

                var adap = new SqlDataAdapter(cmd);
                var ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                View.FillGrid(ds1.Tables[0]);
            }
            catch (Exception err)
            {
                View.ShowError(err);
            }
            finally
            {
                TryCloseConection();
            }
        }

        private void TryCloseConection()
        {
            if (con != null && con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}
