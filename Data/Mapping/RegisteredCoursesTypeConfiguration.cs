// <copyright file="RegisteredCoursesTypeConfiguration.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Mapping
{
    using Model;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.ModelConfiguration;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    internal class RegisteredCoursesTypeConfiguration : EntityTypeConfiguration<registered_courses>
    {
        public RegisteredCoursesTypeConfiguration()
        {

            Property(e => e.program)
            .IsFixedLength();


            Property(e => e.level)
            .IsFixedLength();


            Property(e => e.session)
            .IsFixedLength();


            Property(e => e.course_id1)
            .IsFixedLength();


            Property(e => e.course_id2)
            .IsFixedLength();


            Property(e => e.course_id3)
            .IsFixedLength();


            Property(e => e.course_id4)
            .IsFixedLength();


            Property(e => e.course_id5)
            .IsFixedLength();


            Property(e => e.course_id6)
            .IsFixedLength();


            Property(e => e.course_id7)
            .IsFixedLength();


            Property(e => e.course_id8)
            .IsFixedLength();


            Property(e => e.course_id9)
            .IsFixedLength();


            Property(e => e.course_id10)
            .IsFixedLength();
        }
    }
}
