using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Infrastructure
{
    //internal class Student      // internal only accessible in this project
    // abstract chỉ dùng để kế thừa chứ ko dùng khởi tạo 
    public abstract class Student
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public double Math { get; set; }
        public double Literature { get; set; }

        public Student(string name, int age, double math, double literature)
        {
            Name = name;
            Age = age;
            Math = math;
            Literature = literature;
        }

        // viết phương thức trả ra thông tin tên tuổi và điểm trung bình 2 môn văn toán (điểm tổng kết)
        public string GetInfo()
        {
            return $"Name: {Name}, age: {Age}, Average score: {CalculateScore()}";
        }

        // virtual để dùng dc protected
        // protected ko dc gọi từ bên ngoài nhưng có thể dc gọi từ class kế thừa nó
        //protected virtual double CalculateScore()
        //{
        //    return (Math + Literature) / 2;
        //}
        protected abstract double CalculateScore();
    }

    public class EnglishStudent : Student
    {
        public double English { get; set; }
        public EnglishStudent(string name, int age, double math, double literature, double english) : base(name, age, math, literature)
        {
            English = english;
        }

        protected override double CalculateScore()
        {
            return (Math + Literature + English * 2) / 4;
        }
    }

    public class HistoryStudent : Student
    {
        public double History { get; set; }
        public HistoryStudent(string name, int age, double math, double literature, double history) : base(name, age, math, literature)
        {
            History = history;
        }

        protected override double CalculateScore()
        {
            return (Math + Literature + History * 3) / 5;
        }
    }
}
