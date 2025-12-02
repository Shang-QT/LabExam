class Book:
    def __init__(self, title, author, year):
        self.title = title
        self.author = author
        self.year = year
        self.available = True
        
    # This function allows a user to borrow a book
    def borrow_book(self):
        if self.available:
            self.available = False
            print(f"'{self.title}' has been borrowed.")
        else:
            print(f"'{self.title}' is currently unavailable.")
            
    # This function allows a user to return a book
    def return_book(self):
        if not self.available:
            self.available = True
            print(f"'{self.title}' has been returned.")
        else:
            print(f"'{self.title}' is already in the library.")
    # This function checks if the book is available
    def is_available(self):
        return self.available
    
    # This function displays book information
    def display_info(self):
        status = "Available" if self.available else "Borrowed"
        print(f"Title: {self.title}")
        print(f"Author: {self.author}")
        print(f"Year: {self.year}")
        print(f"Status: {status}")
        print("-" * 30)

class Library:
    def __init__(self):
        self.books = []
        
    # This function adds a new book to the library
    def add_book(self, title, author, year):
        new_book = Book(title, author, year)
        self.books.append(new_book)
        
    # This function lists all books in the library
    def list_books(self):
        if not self.books:
            print("No books in the library yet.")
            return
        for book in self.books:
            book.display_info()
            
    # This function finds a book by title
    def find_book(self, title):
        for book in self.books:
            if book.title.lower() == title.lower():
                return book
        return None
library = Library()

# Add initial books
library.add_book("The Hobbit", "J.R.R. Tolkien", 1937)
library.add_book("1984", "George Orwell", 1949)
library.add_book("Python Basics", "John Smith", 2021)
library.add_book("Lord of the Mysteries", "Cuttlefish That Loves Diving", 2015)
library.add_book("Shadow Slave", "Guiltythree", 2021)

while True:
    print("\n=== Library Menu ===")
    print("1. View All Books")
    print("2. Borrow a Book")
    print("3. Return a Book")
    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        library.list_books()

    elif choice == "2":
        print("\n=== All Books ===")
        library.list_books()
        title = input("Enter the title of the book you're going to borrow: ")
        book = library.find_book(title)
        if book:
            book.borrow_book()
        else:
            print("Book not found in the library.")

    elif choice == "3":
        title = input("Enter the title of the book you're going to return: ")
        book = library.find_book(title)
        if book:
            book.return_book()
        else:
            print("Book not found.")

    elif choice == "4":
        print("Exiting program...")
        break

    else:
        print("Invalid choice. Please try again.")