using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace LearnOOP
{
    public class Student
    {
        // tạo class Student có các thành phần: tên tuổi (int), điểm (double)
        // viết constructor nhận vào 3 đối số: tên tuổi và điểm 
        // viết chương trình cho phép người dùng nhập thông tin học sinh,
        // sau khi nhập xong thì hỏi xem có muốn tiếp tục không,
        // nếu bấm "y" thì nhập tiếp, nếu bấm phím khác thì dừng chương trinhg và in ra thông tin các học sinh đã nhập
        // ( lưu ý validate tuổi và điểm )
        public int Age;
        public string Name;
        public double Score;

        public Student(string name, int age, double score)
        {
            Name = name;
            Age = age;
            Score = score;
        }

        public void InputInfo()
        {
            bool isContinue = true;

            while (isContinue)
            {
                Console.WriteLine("Input name: ");
                Name = Console.ReadLine();

                Console.WriteLine("Input age: ");
                bool checkAge = int.TryParse(Console.ReadLine(), out Age) && Age > 0;
                while (!checkAge)
                {
                    Console.WriteLine("Please input valid age and > 0");
                    checkAge = int.TryParse(Console.ReadLine(), out Age) && Age > 0;
                }

                Console.WriteLine("Input score: ");
                bool checkScore = double.TryParse(Console.ReadLine(), out Score) && Score >= 0 && Score <= 10;
                while (!checkScore)
                {
                    Console.WriteLine("Please input valid score and >= 0 and <= 10");
                    checkScore = double.TryParse(Console.ReadLine(), out Score) && Score >= 0 && Score <= 10;
                }

                Console.WriteLine($"name: {Name}, age: {Age}, score: {Score}");

                Console.WriteLine("Do you want to continue y/n");

                string value = Console.ReadLine();
                if (value == "y")
                {
                    isContinue = true;
                }
                else
                {
                    isContinue = false;
                }
            } 
        }
    }
}
