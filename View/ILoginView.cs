using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace View
{
    public interface ILoginView : IViewBase
    {
        bool IsPageValid { get; }
        string LogUser { get; set; }
        string Password { get; set; }
        string Profile { get; set; }
        string Username { get; set; }

        void FocusUsernameField();
        void SetSessionValue(string v, string text);
        void Redirect(string v);
        void ShowException(ApplicationException aex);
        void ClearMessages();
    }
}
