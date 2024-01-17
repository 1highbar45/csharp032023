using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnList
{
    public class Service2
    {
        public List<int> numbers = new List<int>() { 1, 5, 6, 7, 10, 15, 35, 57 };

        public void DemoLinQ()
        {
            List<int> oddNumbers = new List<int>();

            //for (int i = 0; i < numbers.Count; i++)
            //{
            //    if (numbers[i] % 2 != 0)
            //    {
            //        oddNumbers.Add(numbers[i]);
            //    }
            //}

            //foreach (int number in numbers)
            //{
            //    if (number % 2 != 0)
            //    {
            //        oddNumbers.Add(number);
            //    }
            //}

            oddNumbers = numbers.Where(item => item % 2 != 0).ToList();

            List<int> oddNumbersa = numbers.Where(item => item % 3 == 0 && item % 2 != 0).ToList();
        }

        public void Arrange()
        {
            var ascendingNumbers = numbers.OrderBy(x => x).ToList();
            var descendingNumbers = numbers.OrderByDescending(x => x).ToList();
        }
    }
}
