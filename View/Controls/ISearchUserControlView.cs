using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace View.Controls
{
    public interface ISearchUserControlView : IViewBase
    {
        string InputUser { get; set; }

        void ShowException(Exception ex);
        void RaiseExceptionEvent(Exception exp);
        void GridDataSource(DataSet ds1);
        void ShowUserGrid();
        void ClearExceptions();
    }
}
