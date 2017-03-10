using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Presenter.Exceptions
{
    public class UserSearchException : ApplicationException
    {
        public Exception InnerException { get; set; }
    }
}
