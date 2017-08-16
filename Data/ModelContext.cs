// <copyright file="ModelContext.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.Data.Entity;
    using System.Diagnostics;
    using Mapping;

    public partial class ModelContext : DbContext
    {
        public ModelContext()
            : base()
        {
            DbConfiguration.SetConfiguration(new ModelContextConfiguration());
            Database.Log = msg => Debug.WriteLine(msg);
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
            modelBuilder.Configurations.Add(new UserTypeConfiguration());
            modelBuilder.Configurations.Add(new RegisteredCoursesTypeConfiguration());
        }
    }
}
