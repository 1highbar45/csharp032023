using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnIfElse
{
    public class Service
    {
        // xác định học lực: điểm <5 => bad,, =5 => average > 5 => good
        public string EvaluateStudent(double score)
        {
            string result = "";
            if (score == 5)
            {
                result = "average";
            }

            if (score < 5)

            {
                result = "bad";
            }

            if (score > 5)

            {
                result = "good";
            }
            return result;
        }

    }
}
