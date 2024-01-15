using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lesson4HW
{
    public class HW
    {
        public string GetTriangleType(int a, int b, int c)
        {
            string type = "";
            if ((a + b > c) && (a + c > b) && (b + c > a))
            {
                if ((a == b) && (b == c))
                {
                    type = "Tam giac deu";
                }
                else if ((a == b) || (a == c) || (b == c))
                {
                    type = "Tam giac can";
                }
                else if ((a * a == b * b + c * c) || (b * b == a * a + c * c) || (c * c == a * a + b * b))
                {
                    type = "Tam giac vuong";
                }
                else
                {
                    type = "Tam giac lech";
                }
            }
            else
            {
                type = "Ko phai tam giac";
            }
            return type;
        }
    }
}
