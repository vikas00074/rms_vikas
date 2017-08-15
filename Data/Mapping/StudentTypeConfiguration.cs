// <copyright file="StudentTypeConfiguration.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Mapping
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.ModelConfiguration;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    internal class StudentTypeConfiguration : EntityTypeConfiguration<students>
    {
        public StudentTypeConfiguration()
        {
            Property(e => e.lastname)
                .IsFixedLength();


            Property(e => e.firstname)
            .IsFixedLength();


            Property(e => e.midname)
            .IsFixedLength();


            Property(e => e.gender)
            .IsFixedLength();


            Property(e => e.phone)
            .IsFixedLength();


            Property(e => e.email)
            .IsFixedLength();


            Property(e => e.program)
            .IsFixedLength();


            Property(e => e.level)
            .IsFixedLength();


            Property(e => e.session)
            .IsFixedLength();


            Property(e => e.user_created)
            .IsFixedLength();
        }
    }
}
