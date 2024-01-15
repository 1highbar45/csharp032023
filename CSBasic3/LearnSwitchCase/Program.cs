using LearnSwitchCase;

Service service = new Service();

string message = service.GetMessage(200);

int days = service.GetDaysOfMonth(2,2020);
int days1 = service.GetDaysOfMonth1(Month.February, 2021);


Console.ReadKey();