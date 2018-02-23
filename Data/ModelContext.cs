// <copyright file="ModelContext.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Validation;
    using System.Diagnostics;
    using Mapping;

    public partial class ModelContext : DbContext
    {
        public ModelContext()
            : base()
        {
            DbConfiguration.SetConfiguration(new ModelContextConfiguration());
            Database.Log = msg => Debug.WriteLine(msg);
            Database.SetInitializer(new DropCreateDatabaseIfModelChanges<ModelContext>());
            Configuration.ValidateOnSaveEnabled = false;
        }

        public virtual DbSet<Course> Courses { get; set; }

        public virtual DbSet<registered_courses> registered_courses { get; set; }

        public virtual DbSet<results> results { get; set; }

        public virtual DbSet<Student> Students { get; set; }

        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CourseTypeConfiguration());
            modelBuilder.Configurations.Add(new StudentTypeConfiguration());
            modelBuilder.Configurations.Add(new ResultTypeConfiguration());
            modelBuilder.Configurations.Add(new UserTypeConfiguration());
            modelBuilder.Configurations.Add(new RegisteredCoursesTypeConfiguration());
        }

        protected override DbEntityValidationResult ValidateEntity(DbEntityEntry entityEntry, IDictionary<object, object> items)
        {
            return base.ValidateEntity(entityEntry, items);
        }

        protected override bool ShouldValidateEntity(DbEntityEntry entityEntry)
        {
            return base.ShouldValidateEntity(entityEntry);
        }
    }
}
