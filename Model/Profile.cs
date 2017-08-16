// <copyright file="Profile.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    public class Profile : Entity<byte>
    {
        public static readonly Profile Administrator = new Profile(1, "ADM", "Administrator");
        public static readonly Profile Default = new Profile(2, "DEF", "Defualt");

        public string Abbreviation { get; set; }

        public string Description { get; set; }

        protected Profile()
        {

        }

        protected Profile(byte id, string abbr, string desc)
            : this()
        {
            Identifier = id;
            Abbreviation = abbr;
            Description = desc;
        }
    }
}
