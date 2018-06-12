// <copyright file="Service.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace BusinessLogic
{
    using BusinessLogic.Contracts;
    using Unity;

    public static class Service
    {
        private static readonly IUnityContainer _container;

        static Service()
        {
            _container = new UnityContainer();

            _container.RegisterSingleton<IStudentBusinessLogic, StudentBusinessLogic>();
            _container.RegisterSingleton<ICourseBusinessLogic, CourseBusinessLogic>();
        }

        public static T Get<T>()
            where T : IBusinessLogicBase
        {
            return _container.Resolve<T>();
        }
    }
}
