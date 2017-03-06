using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace View
{
    public interface ISiteView : IViewBase
    {
        void InitCacheConfiguration();
        T GetSessionValue<T>(string value);
        void SetLoggedUser(string userLogger);
        void Redirect(string v);
        void ShowException(Exception aex);
        void FinishSession();
    }
}
