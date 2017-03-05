using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using View;

namespace Presenter
{
    public class UsersPresenter : PresenterBase<IUsersView>
    {
        public UsersPresenter(IUsersView view) 
            : base(view)
        {
        }
    }
}
