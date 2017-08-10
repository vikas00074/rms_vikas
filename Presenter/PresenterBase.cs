// <copyright file="PresenterBase.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Presenter
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using View;

    public class PresenterBase<TView>
        where TView : IViewBase
    {
        public TView View { get; protected internal set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="PresenterBase{TView}"/> class.
        /// </summary>
        /// <param name="view"></param>
        public PresenterBase(TView view)
        {
            View = view;
        }
    }
}
