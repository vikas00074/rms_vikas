// <copyright file="ResultTypeConfiguration.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Mapping
{
    using Model;
    using System.Data.Entity.ModelConfiguration;

    internal class ResultTypeConfiguration : EntityTypeConfiguration<results>
    {
        public ResultTypeConfiguration()
        {

            Property(e => e.program)
            .IsFixedLength();


            Property(e => e.level)
            .IsFixedLength();


            Property(e => e.session)
            .IsFixedLength();


            Property(e => e.course_id1)
            .IsFixedLength();


            Property(e => e.score1)
            .IsFixedLength();


            Property(e => e.grade1)
            .IsFixedLength();


            Property(e => e.course_id2)
            .IsFixedLength();


            Property(e => e.score2)
            .IsFixedLength();


            Property(e => e.grade2)
            .IsFixedLength();


            Property(e => e.course_id3)
            .IsFixedLength();


            Property(e => e.score3)
            .IsFixedLength();


            Property(e => e.grade3)
            .IsFixedLength();
        }
    }
}
