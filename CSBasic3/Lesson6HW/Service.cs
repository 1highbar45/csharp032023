using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Formats.Asn1.AsnWriter;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Lesson6HW
{
    public class Service
    {
        // Tạo một danh sách số nguyên và hiển thị nó trên màn hình.
        public List<int> numbers = new List<int>() { 1, 5, 6, 7, 10, 15, 35, 57 };

        public void ShowList()
        {
            Console.WriteLine("List number: ");
            foreach (int number in numbers)
            {
                Console.WriteLine(number);
            }
        }

        // Thêm và xóa phần tử:
        // Thêm một phần tử mới vào danh sách và hiển thị danh sách sau khi thêm.
        // Xóa một phần tử từ danh sách và hiển thị danh sách sau khi xóa.
        public void AddNumber()
        {
            Console.WriteLine("Input a number to add: ");
            ValidateNumber(out int num);

            numbers.Add(num);

            Console.WriteLine("List after add: ");
            foreach (int number in numbers)
            {
                Console.WriteLine(number);
            }
        }

        public void RemoveNumber()
        {
            Console.WriteLine("Input number to remove: ");
            ValidateNumber(out int num);

            numbers.Remove(num);

            Console.WriteLine("List after remove: ");
            foreach (int number in numbers)
            {
                Console.WriteLine(number);
            }
        }

        public static void ValidateNumber(out int num)
        {
            bool check = int.TryParse(Console.ReadLine(), out num);
            while (!check)
            {
                Console.WriteLine("Please input valid number");
                check = int.TryParse(Console.ReadLine(), out num);
            }
        }

        // Tính tổng và trung bình:
        // Tính tổng của tất cả các phần tử trong danh sách.
        // Tính giá trị trung bình của các phần tử trong danh sách.
        public void GetSum()
        {
            Console.WriteLine("Sum of List: ");
            int sum = 0;
            foreach (int number in numbers)
            {
                sum = sum + number;
            };
            Console.WriteLine(sum);
        }

        public void GetMean()
        {
            Console.WriteLine("Mean of List: ");
            int sum = 0;
            foreach (int number in numbers)
            {
                sum = sum + number;
            };
            int mean = sum / numbers.Count;
            Console.WriteLine(mean);
        }

        // Tính toán trên danh sách:
        // Tạo một danh sách số nguyên và tính tổng của các số lẻ và chẵn riêng biệt.
        // Tính tổng các số nguyên tố trong danh sách.
        public void GetSumOddAndEven()
        {
            int sumOdd = 0;
            int sumEven = 0;
            foreach (int number in numbers)
            {
                if (number % 2 == 0)
                {
                    sumEven = sumEven + number;
                }
                else
                {
                    sumOdd = sumOdd + number;
                }
            };
            Console.WriteLine("Sum of odd number in List: ");
            Console.WriteLine(sumOdd);
            Console.WriteLine("Sum of even number in List: ");
            Console.WriteLine(sumEven);
        }

        public void GetSumPrime()
        {
            int sumPrime = 0;
            foreach (int number in numbers)
            {
                if (IsPrimeNumber(number))
                {
                    sumPrime = sumPrime + number;
                }
            }
            Console.WriteLine("Sum of prime number in List: ");
            Console.WriteLine(sumPrime);
        }

        public static bool IsPrimeNumber(int num)
        {
            int count = 0;
            for (int i = 1; i <= num; i++)
                if (num % i == 0)
                    count = count + 1;

            if (count == 2)
                return true;
            else
                return false;
        }
    }
}
