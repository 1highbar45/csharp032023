using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnCommonClass
{
    public class Service
    {
        public void Demo()
        {
            string str = "Hello";
            int length = str.Length;

            string str1 = "Hello";
            string str2 = " world";
            string result = string.Concat(str1, str2);

            string upperCase = str.ToUpper();
            string lowerCase = str.ToLower();

            string substr = result.Substring(6);
            string substr2 = result.Substring(0, 5);

            string strFruits = "apple, orange, banana";
            string[] fruits = str.Split(',');

            string replaced = result.Replace("world", "universe");

            string strTrim = "   Hello   ";
            string trimmed = strTrim.Trim();

            int firstIndex = result.IndexOf("o");
            int lastIndex = result.LastIndexOf("o");

            StringBuilder sb = new StringBuilder();
            sb.Append("hello");
            sb.Append(" world");

            sb.Insert(5, "beautiful ");

            sb.Remove(6, 10);

            sb.Replace("world", "universe");

            Console.WriteLine(sb.ToString());
        }

        public static void DemoDateTime()
        {
            DateTime now = DateTime.Now;
            DateTime today = DateTime.Today;

            DateTime specificDate = new DateTime(2023, 5, 15);
            DateTime specificDateTime = new DateTime(2023, 5, 15, 10, 30, 0);

            DateTime futureDate = DateTime.Now.AddDays(7);
            DateTime earlierDate = new DateTime(2022, 1, 1);
            DateTime laterDate = new DateTime(2022, 1, 10);
            TimeSpan difference = laterDate.Subtract(earlierDate);

            string formattedDate = now.ToString("dd-MM-yyyy");

            string dateString = "2024-1-22";
            DateTime parsedDate = DateTime.Parse(dateString); 
        }

        public static void DemoMath()
        {
            int absoluteValue = Math.Abs(-5);

            double squareRoot = Math.Sqrt(25);

            double power = Math.Pow(2, 3);

            int maxValue = Math.Max(10, 20);
            int minValue = Math.Min(10, 20);

            double piValue = Math.PI;
            double eValue = Math.E;

            double sineValue = Math.Sin(Math.PI/2);
            double cosineValue = Math.Cos(0);
        }
    }
}
