using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnOOP3
{
    public class Student
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public double AverageScore { get; set; }

        public Student(string name, int id, double avg)
        {
            Name = name;
            Id = id;
            AverageScore = avg;
        }
    }
}
