// <copyright file="StudentTypeConfiguration.cs" company="RMS">
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

    internal class StudentTypeConfiguration : EntityTypeConfiguration<Student>
    {
        public StudentTypeConfiguration()
        {
            Property(e => e.lastname);



            Property(e => e.firstname);



            Property(e => e.midname);



            Property(e => e.gender);



            Property(e => e.phone);



            Property(e => e.email);



            Property(e => e.program);



            Property(e => e.level);



            Property(e => e.session);



            Property(e => e.user_created);

        }
    }
}
