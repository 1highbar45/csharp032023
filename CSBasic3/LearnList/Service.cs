using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnList
{
    public static class Service
    {
        public static void DemoList()
        {
            List<int> lstNumbers = new List<int>();
            lstNumbers.Add(5);
            lstNumbers.Add(6);
            lstNumbers.Add(9);
            lstNumbers.Remove(9);

            List<string> students = new List<string>() { "nam", "lan", "thu" };
            students[0] = "lam";
            string std1 = students[^1];
            string std1a = students[students.Count - 1];
            Console.ReadKey();
        }

        public static void EngVietDic()
        {
            List<string> viets = new List<string>() { "ban", "ghe", "but" };
            List<string> engs = new List<string>() { "table", "chair", "pen" };

            Console.WriteLine("Nhap tu tieng Anh");
            string word = Console.ReadLine();

            for (int i = 0; i < engs.Count; i++)
            {
                if (engs[i].Equals(word, StringComparison.OrdinalIgnoreCase))
                {
                    Console.WriteLine($"Tu tieng Viet tuong ung: {viets[i]}");
                    return;
                }
            }
            Console.WriteLine("Khong tim thay tu tieng Viet tuong ung");
        }
    }
}
