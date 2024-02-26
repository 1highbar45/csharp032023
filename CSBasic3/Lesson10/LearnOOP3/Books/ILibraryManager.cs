using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnOOP3.Books
{
    public interface ILibraryManager
    {
        void ShowBook();
        void AddBook(CreateBookViewModel model);
        void SearchBook(string keyword);
        void BorrowBook(string keyword);
        void GetBookBack(string keyword);
    }

    public class LibraryManager : ILibraryManager
    {
        private List<Book> listBooks;
        private readonly List<Category> categories;

        public LibraryManager()
        {
            listBooks = new List<Book>();
            categories = new List<Category>() { new Category(1, "music"), new Category(2, "cook") };
        }

        public void AddBook(CreateBookViewModel model)
        {
            var currentBook = listBooks.FirstOrDefault(s => s.Id == model.Id);
            if (currentBook != null)
            {
                Console.WriteLine($"This Id = {model.Id} has existed");
                return;
            }
            var book = new Book(model.Id, model.Name, model.Author, model.CategoryId, model.Quantity);
            listBooks.Add(book);
            Console.WriteLine($"This book {model.Name} is added to libray");
        }

        public void BorrowBook(string keyword)
        {
            var book = listBooks.FirstOrDefault(s => s.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase));
            if (book != null && book.Quantity > 0)
            {
                book.Quantity--;
                Console.WriteLine($"Borrow book {book.Name} success");
            }
            else
            {
                Console.WriteLine("Book is not found");
            }
        }

        public void GetBookBack(string keyword)
        {
            var book = listBooks.FirstOrDefault(s => s.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase));
            if (book != null)
            {
                book.Quantity++;
                Console.WriteLine($"Get book {book.Name} back success");
            }
            else
            {
                Console.WriteLine("Book is not found");
            }
        }

        public void SearchBook(string keyword)
        {
            throw new NotImplementedException();
        }

        public void ShowBook()
        {
            var bookVm = from b in listBooks
                         join c in categories
                         on b.CategoryId equals c.Id
                         select new BookViewModel
                         {
                             Id = b.Id,
                             Name = b.Name,
                             CategoryName = c.Name,
                             PublishedDate = b.PublishedDate,
                             Quantity = b.Quantity,
                             Author = b.Author,
                         };
            var result = bookVm.ToList();
        }
    }
}
