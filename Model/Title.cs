// <copyright file="Title.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    public class Title : Entity<byte>
    {
        public static readonly Title Mister = new Title(1, "MR", "Mister");
        public static readonly Title Misters = new Title(2, "MRS", "Misters");
        public static readonly Title Miss = new Title(3, "Miss", "Miss");
        public static readonly Title Misses = new Title(4, "MS", "Mister");
        public static readonly Title Master = new Title(5, "MST", "Master");
        public static readonly Title Doctor = new Title(6, "Dr", "Doctor");
        public static readonly Title Professor = new Title(7, "Prof", "Professor");
        public static readonly Title Enginner = new Title(8, "Engr", "Enginner");

        public string Abbreviation { get; set; }

        public string Description { get; set; }

        protected Title()
        {
        }

        protected Title(byte id, string abbr, string desc)
            : this()
        {
            Identifier = id;
            Abbreviation = abbr;
            Description = desc;
        }
    }
}
