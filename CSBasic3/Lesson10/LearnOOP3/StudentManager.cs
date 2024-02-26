using LearnOOP3.Students;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace LearnOOP3
{
    public class StudentManager
    {
        private List<Student> Students;
        public StudentManager()
        {
            Students = new List<Student>();
        }
        public void AddStudent(Student student)
        {
            Students.Add(student);
        }

        public void ShowInfo()
        {
            foreach (var student in Students)
            {
                Console.WriteLine($"Name: {student.Name}, Id: {student.Id}, Average Score: {student.AverageScore}"); ;
            }
        }

        public void FindStudent()
        {
            Console.WriteLine("Input Id: ");
            int id = int.Parse(Console.ReadLine());
            var std = Students.FirstOrDefault(s => s.Id == id);
            if (std != null)
            {
                Console.WriteLine($"Name: {std.Name}, Id: {std.Id}, Average Score: {std.AverageScore}");
            }
            else
            {
                Console.WriteLine("not found");
            }
        }

        public void FindHighest()
        {
            var result = Students.OrderByDescending(s => s.AverageScore).Take(1).ToList();
            foreach (var student in result)
            {
                Console.WriteLine($"Name: {student.Name}, Id: {student.Id}, Average Score: {student.AverageScore}"); ;
            }
        }
    }
}
