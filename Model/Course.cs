using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Course : Entity<ulong>, IAuditable
    {
        public string Title { get; set; }
        public byte Level { get; set; }
        public DateTime Created { get; set; }
        public User CreatedBy { get; set; }
        public DateTime? Modified { get; set; }
        public User ModifiedBy { get; set; }
    }
}