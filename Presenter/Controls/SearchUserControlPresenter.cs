using Presenter.Exceptions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using View.Controls;

namespace Presenter.Controls
{
    public class SearchUserControlPresenter : PresenterBase<ISearchUserControlView>
    {
        private readonly SqlConnection _conn;

        public SearchUserControlPresenter(ISearchUserControlView view)
            : base(view)
        {
            _conn = new SqlConnection(Properties.Settings.Default.SqlServer);
        }

        public void SearchUser()
        {
            try
            {
                string value = View.InputUser;

                _conn.Open();

                SqlCommand cmd = _conn.CreateCommand();
                cmd.CommandText = "SELECT * FROM cit_users where surname like '@value%' or firstname like '@value%' or user_id like '@value%' or username like '@value%'";
                cmd.Parameters.AddWithValue("value", value);

                    var adap = new SqlDataAdapter(cmd);
                var ds1 = new DataSet();
                adap.Fill(ds1, "rms");

                View.GridDataSource(ds1);

                View.ShowUserGrid();

                View.ClearExceptions();
            }
            catch (Exception ex)
            {
                View.ShowException(ex);
            }
            finally
            {
                _conn.Close();
            }
        }

        public void RaiseException(Exception ex)
        {
            var exp = new UserSearchException() { InnerException = ex };
            View.RaiseExceptionEvent(exp);
        }
    }
}
