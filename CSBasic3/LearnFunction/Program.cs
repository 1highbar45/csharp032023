using LearnFunction;

// tạo 1 đối tượng của Service
Service service = new Service();
double result = service.Sum(5, 6);
double rect = service.RectangleArea(5, 3);
double circle = service.CircleArea(5);
// ref keyword
double area1 = 5;
service.CircleArea1(6, ref area1);

double area2 = 5;
service.CircleArea2(6, area2);

double recPerimeter = 0;
double recArea = service.RectangleArea1(5, 5, out recPerimeter);

double recArea1 = service.RectangleArea1(6, 4, out _);

//const string updateMessage = "Update the product success";
//const string deleteMessage = "Delete the product success";

string iPhone = "iPhone 14";
Console.WriteLine(string.Format(CommonConstants.UpdateMessage, iPhone));

// delete message
Console.WriteLine(string.Format(CommonConstants.DeleteMessage, iPhone));

Console.ReadKey();
