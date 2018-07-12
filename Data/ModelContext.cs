// <copyright file="ModelContext.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.Data.Entity;
    using System.Diagnostics;
    using Data.Initializer;
    using Mapping;
    using Model;

    public partial class ModelContext : DbContext
    {
        public ModelContext()
            : base()
        {
            DbConfiguration.SetConfiguration(new ModelContextConfiguration());
            Database.Log = msg => Debug.WriteLine(msg);
            Database.SetInitializer(new DropAndCreateAlwaysWithSeed());
            Configuration.ValidateOnSaveEnabled = false;
        }

        public virtual DbSet<Course> Courses { get; set; }

        public virtual DbSet<registered_courses> registered_courses { get; set; }

        public virtual DbSet<results> results { get; set; }

        public virtual DbSet<Student> Students { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CourseTypeConfiguration());
            modelBuilder.Configurations.Add(new StudentTypeConfiguration());
            modelBuilder.Configurations.Add(new ResultTypeConfiguration());
            modelBuilder.Configurations.Add(new RegisteredCoursesTypeConfiguration());
        }
    }
}
