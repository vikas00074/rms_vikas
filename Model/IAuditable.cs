using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public interface IAuditable
    {
        DateTime Created { get; set; }
        User CreatedBy { get; set; }
        DateTime? Modified { get; set; }
        User ModifiedBy { get; set; }
    }
}