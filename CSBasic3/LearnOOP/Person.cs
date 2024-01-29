using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using static System.Formats.Asn1.AsnWriter;

namespace LearnOOP
{
    public class Person
    {
        public string name; // data member
        public int age; // data member
        private string address;
        private readonly string template;

        public Person()
        {
            template = "Student name: {0}, student age: {1}";
        }

        public Person(string name1, int age1, string address1)
        {
            name = name1;
            age = age1;
            address = address1;
        }


        private double score;

        public double Score
        {
            get { return score; }
            set
            {
                if (value < 0 || value > 50)
                {
                    throw new Exception("score is invalid");
                }
                else
                {
                    score = value * 2;
                }
            }
        }

        public double Score2 { get; set; }
        public string Info
        {
            get
            {
                return $"name: {name}, age: {age}, address: {address}, score: {score}";
            }
        }

        public string Info1 => $"name: {name}, age: {age}, address: {address}, score: {score}";

        public void GetInfo()   // method
        {
            Console.WriteLine(string.Format(template, name, age));
        }
    }

    //tạo ra 1 class vehicle gồm các nội dung
    // property name (string)
    // property price (int) price >100 và price <10000
    // property info trả ra thông tin name và price
    public class Vehicle
    {
        public string Name { get; set; }

        private int price;
        public int Price
        {
            get { return price; }
            set
            {
                {
                    if (value > 100 && value < 1000)
                    {
                        throw new Exception("price is invalid");
                    }
                    else
                    {
                        price = value;
                    }

                }

            }
        }
        public string Info
        {
            get
            {
                return $"name: {Name}, price: {price}";
            }
        }
    }
}
