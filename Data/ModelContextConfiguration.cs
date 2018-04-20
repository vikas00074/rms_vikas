// <copyright file="ModelContextConfiguration.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Data
{
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.SqlServer;

    internal class ModelContextConfiguration : DbConfiguration
    {
        public ModelContextConfiguration()
        {
            string conx = "data source=DESKTOP-TITUCRB;initial catalog=rms;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";
            SetDefaultConnectionFactory(new SqlConnectionFactory(conx));
            SetProviderServices(SqlProviderServices.ProviderInvariantName, SqlProviderServices.Instance);
        }
    }
}
