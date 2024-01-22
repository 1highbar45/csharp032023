using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnLinQ
{
    public class Service
    {
        public List<int> _lstNumbers = new List<int>() { 6, 10, 4, 7, 12, 56, 78, 99, 23, 58, 72 };

        public void Demo()
        {
            // lấy ra pt đầu tiên số lẻ
            var firstOddNumber = _lstNumbers.FirstOrDefault(s => s % 2 != 0);
            var lastOddNumber = _lstNumbers.LastOrDefault(s => s % 2 != 0);

            var test = _lstNumbers.FirstOrDefault(s => s > 1000);

            // từ list đã cho lấy ra 1 list có 3 pt đầu tiên
            var threeElements = _lstNumbers.Take(3).ToList();
            var threeElements1 = _lstNumbers.Skip(3).Take(3).ToList();

            // từ list đã cho lấy ra các số lẻ, sắp xếp tăng dần và lấy ra list 3 phần tử đầu tiên
            var result = _lstNumbers.Where(s => s % 2 != 0).OrderBy(s => s).Take(3).ToList();

            // select => tạo thành list gồm các số là bình phương của các số trong list ban đầu
            // tạo thành 1 list string có cú pháp "number - pt" từ list đã cho
            var select1 = _lstNumbers.Select(s => s * s).ToList();
            var select2 = _lstNumbers.Select(s => $"number-{s}").ToList();

            var distinct = _lstNumbers.Distinct().ToList();
            var sum = _lstNumbers.Sum(s => s);
            var avg = _lstNumbers.Average(s => s);
            var min = _lstNumbers.Min();
            var max = _lstNumbers.Max();

            var aggregate = _lstNumbers.Aggregate((s1, s2) => s1 % s2);
        }
    }
}
