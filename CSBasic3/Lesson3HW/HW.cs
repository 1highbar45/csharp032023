using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lesson3HW
{
    public class HW
    {
        //Viết chương trình C# để kiểm tra xem một số nguyên nhập từ người dùng là số dương,
        //số âm, hay bằng 0
        public void InputNumber()
        {
            Console.WriteLine("Input the number");
            string value = Console.ReadLine();

            try
            {
                int number = int.Parse(value);

                if (number == 0)
                {
                    Console.WriteLine("The input number is 0");
                }
                else if (number > 0)
                {
                    Console.WriteLine("The input number is positive number");
                }
                else
                {
                    Console.WriteLine("The input number is negative number");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void InputNumber1()
        {
            Console.WriteLine("Input the number");
            string value = Console.ReadLine();

            //int number = int.Parse(value);

            bool check = int.TryParse(value, out int number);

            if(check == false)
            {
                Console.WriteLine("Number is not correct");
                return;
            }

            if (number == 0)
            {
                Console.WriteLine("The input number is 0");
            }
            else if (number > 0)
            {
                Console.WriteLine("The input number is positive number");
            }
            else
            {
                Console.WriteLine("The input number is negative number");
            }   
        }
    }
}
