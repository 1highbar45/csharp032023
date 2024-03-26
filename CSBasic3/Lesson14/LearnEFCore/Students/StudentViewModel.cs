using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnEFCore.Students
{
    public class StudentViewModel
    {
        public Guid Id { get; set; }
        public string StudentName { get; set; }
        public int Age { get; set; }
        public string Address { get; set; }
        public string MajorName { get; set; }
        public string StatusName { get; set; }
    }
}
