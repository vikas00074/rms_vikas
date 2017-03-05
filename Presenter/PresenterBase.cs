using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using View;

namespace Presenter
{
    public class PresenterBase<TView> 
        where TView : IViewBase
    {
        public TView View { get; protected internal set; }

        public PresenterBase(TView view)
        {
            View = view;
        }
    }
}
