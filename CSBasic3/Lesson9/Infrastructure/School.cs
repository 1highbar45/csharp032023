namespace Infrastructure
{
    // tạo class school có các property:
    // 1 list các english student
    // thêm mới 1 std vào list
    // tính tổng điểm trung bình của các học sinh trong list
    public class School
    {
        internal List<EnglishStudent> Students { get; set;}

        public void AddStudent(EnglishStudent std)
        {
            Students.Add(std);
        }

        public double SumAvgScore()
        {
            //double sum = 0;
            //foreach (var item in Students) {
            //    sum += item.Math;
            //}
            //return sum;

            return Students.Sum(s => s.Math);
        }
    }

    public class GenericSchool<TStudent> where TStudent : Student
    {
        internal List<TStudent> Students { get; set; }
        public void AddStudent(TStudent std)
        {
            Students.Add(std);
        }
        public double SumAvgScore()
        {
            return Students.Sum(s => s.Math);
        }
    }
}
