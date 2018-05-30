// <copyright file="NewUserPresenter.cs" company="RMS">
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

    public class NewUserPresenter : PresenterBase<INewUserView>
    {
        private readonly SqlConnection _conn;

        public NewUserPresenter(INewUserView view)
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
                cmd.CommandText = "INSERT INTO cit_users(user_id, title, firstname, surname, username, password, user_profile, date_created, designation, department, phone, email, User_Group)VALUES(@user_id, @title, @firstname, @surname, @username, @password, @user_profile, @date_created, @designation, @department, @phone, @email, @User_Group)";
                cmd.Parameters.AddWithValue("@title", View.Title);
                cmd.Parameters.AddWithValue("@firstname", View.Firstname);
                cmd.Parameters.AddWithValue("@surname", View.Surname);
                cmd.Parameters.AddWithValue("@username", View.Username);
                cmd.Parameters.AddWithValue("@password", View.Password);
                cmd.Parameters.AddWithValue("@user_profile", View.Profile);
                cmd.Parameters.AddWithValue("@date_created", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@designation", View.Designation);
                cmd.Parameters.AddWithValue("@department", View.Departament);
                cmd.Parameters.AddWithValue("@phone", View.Phone);
                cmd.Parameters.AddWithValue("@email", View.Email);
                cmd.Parameters.AddWithValue("@User_Group", "CIT-Users");

                cmd.ExecuteNonQuery();

                View.SetTitle("New User Registered!");
                View.ClearFields();
                View.ClearException();
                
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
