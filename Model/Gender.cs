// <copyright file="Gender.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    public class Gender : Entity<int>
    {
        public static readonly Gender Unknown = new Gender(0, "UNK", "Unknown");
        public static readonly Gender Male = new Gender(1, "MAL", "Male");
        public static readonly Gender Female = new Gender(2, "FEM", "Female");

        public string Abbreviation { get; set; }

        public string Description { get; set; }

        protected Gender()
        {
        }

        protected Gender(int id, string abbr, string desc)
            : this()
        {
            Identifier = id;
            Abbreviation = abbr;
            Description = desc;
        }
    }
}
