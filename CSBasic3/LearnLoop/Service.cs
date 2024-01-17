using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace LearnLoop
{
    public class Service
    {
        public static void LearnForLoop()
        {
            for (int i = 1; i <= 10; i++)
            {
                if (i == 5)
                {
                    //break;
                    continue;
                }
                Console.WriteLine(i);
            }
        }

        public static void LearnForLoop2()
        {
            for (int i = 1; i <= 100; i++)
            {
                if (i % 2 != 0 && i % 3 == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }

        public static void LearnWhileLoop()
        {
            int i = 1;
            while (i <= 10)
            {
                Console.WriteLine(i);
                i++;
            }
        }

        public static void InputUser()
        {
            bool isContinue = true;
            while (isContinue)
            {
                Console.WriteLine("Input your name");
                string name = Console.ReadLine();

                Console.WriteLine("Input your age");
                int age;
                bool checkAge = int.TryParse(Console.ReadLine(), out age) && age > 0;
                while (!checkAge)
                {
                    Console.WriteLine("Please input valid age and > 0");
                    checkAge = int.TryParse(Console.ReadLine(), out age) && age > 0;
                }
                int.TryParse(Console.ReadLine(), out age);

                Console.WriteLine("Input your address");
                string address = Console.ReadLine();

                Console.WriteLine($"name: {name}, age: {age}, address: {address}");

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

        public static void InputStudent()
        {
            bool isContinue = true;
            while (isContinue)
            {
                Console.WriteLine("Input the name");
                string name = Console.ReadLine();

                Console.WriteLine("Input your math score");
                ValidateScore(out double mathScore);

                Console.WriteLine("Input your literature score");
                ValidateScore(out double literatureScore);

                Console.WriteLine("Input your englist score");
                ValidateScore(out double englishScore);

                Console.WriteLine($"Name: {name}, math: {mathScore}, literature: {literatureScore}, english: {englishScore}");

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

        public static void ValidateScore(out double score)
        {
            bool check = double.TryParse(Console.ReadLine(), out score) && score >= 0 && score <= 10;
            while (!check)
            {
                Console.WriteLine("score must be between 0 -10");
                check = double.TryParse(Console.ReadLine(), out score) && score >= 0 && score <= 10;
            }
        }

        public static void LearnDoWhile()
        {
            int i = 5;
            do
            {
                Console.WriteLine(i);

            }
            while (i < 5);
        }
    }
}
