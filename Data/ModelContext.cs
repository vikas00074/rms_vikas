// <copyright file="ModelContext.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.Data.Entity;
    using Mapping;

    public partial class ModelContext : DbContext
    {
        public ModelContext()
            : base("name=ModelContext")
        {
        }

        public virtual DbSet<courses> courses { get; set; }

        public virtual DbSet<registered_courses> registered_courses { get; set; }

        public virtual DbSet<results> results { get; set; }

        public virtual DbSet<students> students { get; set; }

        public virtual DbSet<users> users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CourseTypeConfiguration());
            modelBuilder.Configurations.Add(new StudentTypeConfiguration());
            modelBuilder.Configurations.Add(new ResultTypeConfiguration());

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.program)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.level)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.session)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id1)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id2)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id3)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id4)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id5)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id6)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id7)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id8)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id9)
                .IsFixedLength();

            modelBuilder.Entity<registered_courses>()
                .Property(e => e.course_id10)
                .IsFixedLength();
        }
    }
}
