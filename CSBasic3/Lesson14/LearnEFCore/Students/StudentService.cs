using LearnEFCore.Entities;
using LearnEFCore.Majors;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnEFCore.Students
{
    public interface IStudentService
    {
        void CreateStudent(CreateStudentViewModel model);
        void DeleteStudent(Guid studentId);
        List<StudentViewModel> GetAllStudent();
        StudentViewModel? GetStudentById(Guid studentId);
        void UpdateStudent(UpdateStudentViewModel model);
    }
    public class StudentService : IStudentService
    {
        private readonly StudentDbContext _context;

        public StudentService()
        {
            _context = new StudentDbContext();
        }
        public void CreateStudent(CreateStudentViewModel model)
        {
            var student = new Student
            {
                Id = Guid.NewGuid(),
                StudentName = model.StudentName,
                Age = model.Age,
                Address = model.Address,
                MajorId = model.MajorId,
                Status = EntityStatus.Active,
                CreatedDate = DateTime.Now,
            };
            _context.Students.Add(student);
            _context.SaveChanges();

        }

        public void DeleteStudent(Guid studentId)
        {
            var student = _context.Students.FirstOrDefault(s => s.Id == studentId);
            if (student == null)
            {
                throw new Exception("student is not found");
            }
            _context.Students.Remove(student);
            _context.SaveChanges();
        }

        public List<StudentViewModel> GetAllStudent()
        {
            var students = _context.Students;
            var majors = _context.Majors;
            var studentViewModel = from s in students
                                   join m in majors
                                   on s.MajorId equals m.Id
                                   select new StudentViewModel
                                   {
                                       Id = s.Id,
                                       StudentName = s.StudentName,
                                       Age = s.Age,
                                       Address = s.Address,
                                       StatusName = s.Status.ToString(),
                                       MajorName = m.MajorName
                                   };
            var result = studentViewModel.ToList();
            return result;
        }

        public StudentViewModel? GetStudentById(Guid studentId)
        {
			throw new NotImplementedException();
		}

		public void UpdateStudent(UpdateStudentViewModel model)
        {
            throw new NotImplementedException();
        }
    }
}
