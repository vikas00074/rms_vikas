﻿// <copyright file="CourseTypeConfiguration.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Mapping
{
    using System.Data.Entity.ModelConfiguration;

    internal class CourseTypeConfiguration : EntityTypeConfiguration<courses>
    {
        public CourseTypeConfiguration()
        {
            Property(e => e.course_title)
                .IsFixedLength();

            Property(e => e.course_level)
                .IsFixedLength();
        }
    }
}
