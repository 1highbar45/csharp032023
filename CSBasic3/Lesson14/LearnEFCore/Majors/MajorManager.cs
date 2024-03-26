using LearnEFCore.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnEFCore.Majors
{
    public class MajorManager
    {
        private readonly MajorService _majorService;

        public MajorManager()
        {
            _majorService = new MajorService();
        }

        public void ManageMajor()
        {
            bool isContinue = true;
            while (isContinue)
            {
                Console.WriteLine("Please choose the option");
                Console.WriteLine("1. Get all major");
                Console.WriteLine("2. Create major");
                Console.WriteLine("3. Update major");
                Console.WriteLine("4. Delete major");
                int.TryParse(Console.ReadLine(), out int option);
                switch (option)
                {
                    case 1:
                        DisplayAllMajors();
                        break;
                    case 2:
                        Console.WriteLine("Input major name");
                        var majorName = Console.ReadLine();
                        var major = new CreateMajorViewModel
                        {
                            MajorName = majorName
                        };
                        try
                        {
                            _majorService.CreateMajor(major);
                            Console.WriteLine($"Create {majorName} successfully!");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                        }
                        break;
                    case 3:
                        DisplayAllMajors();
                        Console.WriteLine("please enter the major Id");
                        try
                        {
                            var model = new UpdateMajorViewModel();
                            model.Id = Guid.Parse(Console.ReadLine());
                            Console.WriteLine("Enter the new major name");
                            model.MajorName = Console.ReadLine();
                            Console.WriteLine("Enter the new major status 1 - active / 2 - inactive");
                            model.Status = (EntityStatus)int.Parse(Console.ReadLine());
                            _majorService.UpdateMajor(model);
                            Console.WriteLine("Update major success");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                        }
                        break;
                    case 4:
                        DisplayAllMajors();
                        Console.WriteLine("Please enter the major Id you want to delete");
                        try
                        {
                            var id = Guid.Parse(Console.ReadLine());
                            var major2 = _majorService.GetMajorById(id);
                            _majorService.DeleteMajor(id);
                            Console.WriteLine($"Delete major {major2.MajorName} successfully!");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                        }
                        break;
                    default:
                        Console.WriteLine("Please choose from 1 => 4");
                        break;
                }
                Console.WriteLine("Do you want to continue y/n ?");
                isContinue = Console.ReadLine().Equals("y");
            }
        }

        private void DisplayAllMajors()
        {
            var majors = _majorService.GetAllMajor();
            foreach (var item in majors)
            {
                Console.WriteLine($"{item.Id} - {item.MajorName} - {item.StatusName}");
            }
        }
    }
}
