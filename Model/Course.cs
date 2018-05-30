// <copyright file="Course.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    public class Course : Entity<ulong>, IAuditable
    {
        public string Title { get; set; }
        public byte Level { get; set; }
        public DateTime Created { get; set; }
        public User CreatedBy { get; set; }
        public DateTime? Modified { get; set; }
        public User ModifiedBy { get; set; }
    }
}