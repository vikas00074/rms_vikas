// <copyright file="DropAndCreateAlwaysWithSeed.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data.Initializer
{
    using System.Data.Entity;
    using Data.Seed;

    internal class DropAndCreateAlwaysWithSeed : DropCreateDatabaseAlways<ModelContext>
    {
        protected override void Seed(ModelContext context)
        {
            context.Students.AddRange(StudentSeed.Seed());
            context.Courses.AddRange(CourseSeed.Seed());

            base.Seed(context);
        }
    }
}
