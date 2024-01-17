using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnArray
{
    public static class Service
    {
        public static void DemoArray()
        {
            int[] arrNumbers = new int[5];
            arrNumbers[0] = 6;
            arrNumbers[1] = 5;
            arrNumbers[2] = 4;
            arrNumbers[3] = 3;
            arrNumbers[4] = 2;

            string[] fruits = new string[5] { "le", "tao", "cam", "dao", "xoai" };

            string[] words = { "table", "chair", "pen" };

            Console.WriteLine(words[1]);
            int length = words.Length;

            Console.ReadKey();
        }

        public static void DemoArr1() {
            int[] arrNumbers = new int[3];
            arrNumbers[0] = 3;
            arrNumbers[1] = 4;
            arrNumbers[2] = 5;

            try
            {
                for (int i = 0; i < arrNumbers.Length; i++)
                {
                    Console.WriteLine(arrNumbers[i]);
                }
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }

        // viết hàm ứng dụng từ điển: Trong hàm khai báo 2 mảng 1 mảng tiếng việt (vd: bàn, ghế bút),
        // và mảng tiếng anh tương ứng (vd: table,chair, pen).
        // Yêu cầu khi người dùng nhập vào 1 từ tiếng anh thì trả ra từ tiếng việt tương ứng, nếu ko có thì trả ra ko tìm thấy.
        public static void DemoArr2()
        {
            string[] viets = { "ban", "ghe", "but" };
            string[] engs = { "table", "chair", "pen" };

            Console.WriteLine("Nhap tu tieng Anh");
            string word = Console.ReadLine();

            for (int i = 0; i < engs.Length; i++)
            {
                if(word == engs[i])
                {
                    Console.WriteLine(viets[i]);
                    return;
                }
            }
            Console.WriteLine("Tim ko thay");
        }

        public static void EngVietDic(string keyword)
        {
            string[] arrEng = new string[5] { "chair", "table", "fruit", "tree", "paint" };
            string[] arrVie = new string[5] { "ghe", "ban", "trai cay", "cay", "son" };
            for (int i = 0; i < arrEng.Length; i++)
            {
                if (arrEng[i].Equals(keyword, StringComparison.OrdinalIgnoreCase))
                {
                    Console.WriteLine($"Tu co nghia tieng viet la: {arrVie[i]}");
                    return;
                }

            }
            Console.WriteLine($"Khong tim thay ket qua");

        }

    }
}
