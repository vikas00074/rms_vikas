using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using View;

namespace Presenter
{
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
                cmd.CommandText = "INSERT INTO students(Student_ID, lastname, firstname, midname, gender, dob_day, dob_month, dob_year, phone, email, program, level, session, date_created, user_created)VALUES(@Student_ID, @lastname, @firstname, @midname, @gender, @dob_day, @dob_month, @dob_year, @phone, @email, @program, @level, @session, @date_created, @user_created)";

                cmd.Parameters.AddWithValue("@lastname", View.Surname);
                cmd.Parameters.AddWithValue("@firstname", View.FirstName);
                cmd.Parameters.AddWithValue("@midname", View.MiddleName);
                cmd.Parameters.AddWithValue("@gender", View.Gender);
                cmd.Parameters.AddWithValue("@dob_day", View.DateOfBirth.Day);
                cmd.Parameters.AddWithValue("@dob_month", View.DateOfBirth.Month);
                cmd.Parameters.AddWithValue("@dob_year", View.DateOfBirth.Year);
                cmd.Parameters.AddWithValue("@phone", View.Phone);
                cmd.Parameters.AddWithValue("@email", View.Email);
                cmd.Parameters.AddWithValue("@program", View.Program);
                cmd.Parameters.AddWithValue("@level", View.Level);
                cmd.Parameters.AddWithValue("@session", View.Session);
                cmd.Parameters.AddWithValue("@date_created", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
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
