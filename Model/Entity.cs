// <copyright file="Entity.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace Model
{
    public abstract class Entity<TKey>
        where TKey : struct
    {
        public TKey Identifier { get; protected set; }
    }
}