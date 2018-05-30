// <copyright file="User.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.ComponentModel.DataAnnotations;

    public partial class User
    {
        public long Id { get; set; }

        [Required]
        [StringLength(50)]
        public string username { get; set; }

        [Required]
        [StringLength(50)]
        public string password { get; set; }

        [StringLength(50)]
        public string firstname { get; set; }

        [StringLength(50)]
        public string surname { get; set; }

        [StringLength(50)]
        public string user_profile { get; set; }

        [StringLength(50)]
        public string user_id { get; set; }

        [StringLength(50)]
        public string title { get; set; }

        [StringLength(50)]
        public string date_created { get; set; }

        [StringLength(50)]
        public string designation { get; set; }

        [StringLength(50)]
        public string department { get; set; }

        [StringLength(50)]
        public string phone { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [StringLength(50)]
        public string User_Group { get; set; }
    }
}
