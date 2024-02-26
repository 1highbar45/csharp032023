using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnOOP3
{
    public interface IHasStatus
    {
        public Status Status { get; set; }
    }

    public enum Status
    {
        Active = 1,
        InActive = 2
    }
}
