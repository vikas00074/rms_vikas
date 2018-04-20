// <copyright file="LoginPresenter.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using System.Data.SqlClient;
    using View;

    public class LoginPresenter : PresenterBase<ILoginView>
    {
        private readonly SqlConnection _conn;

        public LoginPresenter(ILoginView view)
            : base(view)
        {
            _conn = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void InitPage()
        {
            try
            {
                View.ClearMessages();
                View.FocusUsernameField();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void PerformLogin()
        {
            try
            {
                if (View.IsPageValid)
                {
                    string username = View.Username;
                    string password = View.Password;

                    _conn.Open();
                    var cmd = _conn.CreateCommand();
                    cmd.CommandText = "Select * from users where username = '" + username + "' and password= '" + password + "' ";
                    var dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        if (dr.Read())
                        {
                            View.LogUser = Convert.ToString(dr[3]) + " " + Convert.ToString(dr[4]);
                            View.Profile = Convert.ToString(dr[5]);
                        }

                        View.SetSessionValue("Value", View.LogUser);
                        View.SetSessionValue("Value1", View.Profile);
                        View.SetSessionValue("Value3", View.Username);

                        View.Redirect("Homepage.aspx");
                    }
                    else
                    {
                        View.Username = string.Empty;
                        View.Password = string.Empty;

                        throw new ApplicationException("Invalid Login Details! Try Again");
                    }

                    _conn.Close();
                }
            }
            catch (ApplicationException aex)
            {
                View.ShowException(aex);
            }
        }
    }
}
