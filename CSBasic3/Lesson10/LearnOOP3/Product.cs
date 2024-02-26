using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnOOP3
{
    public class Product : IHasDateTime, IHasStatus, ICommonService
    {
        public DateTime CreatedDate { get; set; }
        public DateTime UpdatedDate { get; set; }
        public Status Status { get; set; }

        public string Name { get; set; }
        public decimal Price { get; set; }

        public string GetInfo()
        {
            return $"{Name}, {CreatedDate}";
        }
    }
}
