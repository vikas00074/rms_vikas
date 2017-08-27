using System;
using System.Collections.Generic;

namespace Populator
{
    internal class EntityFactory<T>
        where T : IHidratable<T>, new()
    {
        public EntityFactory()
        {
        }

        internal T Create()
        {
            return new T().Hidrate();
        }

        internal IEnumerable<T> Create(int quantity)
        {
            for (int index = 0; index < quantity; index++)
            {
                yield return Create();
            }
        }
    }
}