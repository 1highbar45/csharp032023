using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnFunction
{
    internal class Service
    {
        public double Sum(double number1, double number2)
        {
            double sum = number1 + number2;
            return sum;
        }

        public double RectangleArea(double length, double width)
        {
            double area = length * width;
            return area;
        }

        public double CircleArea(double radius)
        {
            double area = radius*radius*3.14;
            return area;
        }

        public void CircleArea1(double radius, ref double area)
        {
            area = radius * radius * 3.14;
        }

        public void CircleArea2(double radius, double area)
        {
            area = radius * radius * 3.14;
        }

        public double RectangleArea1(double length, double width, out double perimeter)
        {
            double area = length * width;
            perimeter = (length + width)*2;
            return area;
        }
    }
}
