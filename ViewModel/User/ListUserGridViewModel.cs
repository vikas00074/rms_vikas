// <copyright file="ListUserGridViewModel.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace ViewModel.User
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    public class ListUserGridViewModel
    {
        public string FirstName { get; set; }
        public long Identifier { get; set; }
        public string Profile { get; set; }
        public string SurName { get; set; }
        public string Username { get; set; }
    }
}
