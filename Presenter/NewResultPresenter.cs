// <copyright file="NewResultPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using System.Collections.Generic;
    using System.Data.SqlClient;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View;

    public class NewResultPresenter : PresenterBase<INewResultView>
    {
        private readonly SqlConnection _conn;

        public NewResultPresenter(INewResultView view)
            : base(view)
        {
            _conn = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void Save()
        {
            try
            {
                _conn.Open();
                var cmd = _conn.CreateCommand();
                cmd.CommandText = "INSERT INTO students(lastname, firstname, midname, gender, birthdate, phone, email, program, level, session, date_created, user_created) VALUES (@lastname, @firstname, @midname, @gender, @birthdate, @phone, @email, @program, @level, @session, @date_created, @user_created)";

                cmd.Parameters.AddWithValue("@lastname", View.Surname);
                cmd.Parameters.AddWithValue("@firstname", View.FirstName);
                cmd.Parameters.AddWithValue("@midname", View.MiddleName);
                cmd.Parameters.AddWithValue("@gender", View.Gender);
                cmd.Parameters.AddWithValue("@birthdate", View.DateOfBirth.Date);
                cmd.Parameters.AddWithValue("@phone", View.Phone);
                cmd.Parameters.AddWithValue("@email", View.Email);
                cmd.Parameters.AddWithValue("@program", View.Program);
                cmd.Parameters.AddWithValue("@level", View.Level);
                cmd.Parameters.AddWithValue("@session", View.Session);
                cmd.Parameters.AddWithValue("@date_created", DateTime.Now);
                cmd.Parameters.AddWithValue("@user_created", View.LoggedUser);

                cmd.ExecuteNonQuery();

                View.Title = "New Student Registered!";

                View.ClearFields();
                View.ClearMessages();
            }
            catch (ApplicationException aex)
            {
                View.ShowException(aex);
            }
        }
    }
}
