// <copyright file="IAuditable.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    public interface IAuditable
    {
        DateTime Created { get; set; }
        User CreatedBy { get; set; }
        DateTime? Modified { get; set; }
        User ModifiedBy { get; set; }
    }
}