using Infrastructure;

//var anna = new Student("anna", 10, 5, 6);
var anna1 = new EnglishStudent("anna1", 10, 5, 6, 8);

var anna2 = new HistoryStudent("anna2", 17, 7, 8, 7.5);

var historySchool1 = new GenericSchool<HistoryStudent>();
var englishSchool1 = new GenericSchool<EnglishStudent>();

Console.WriteLine(anna2.GetInfo());

Console.ReadKey();