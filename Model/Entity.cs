using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public abstract class Entity<TKey> where TKey : struct
    {
        public TKey Identifier { get; set; }
    }
}