

class Book {
  String sarlavhai;
  String aftor;

  Book({required this.sarlavhai, required this.aftor});

  void display() {
    print('Sarlavhai: $sarlavhai, Aftor: $aftor');
  }
}

class Kitobxona {
  String nom;
  List<Book> books;

  Kitobxona({required this.nom, required this.books});

  void addBook(Book book) {
    books.add(book);
    print('Kitob dobafkka kard: ${book.sarlavhai}');
  }

  void removeBook(String sarlavhai) {
    books.removeWhere((book) => book.sarlavhai == sarlavhai);
    print('Kitobbro giriftapartoftan udalit kardan: $sarlavhai');
  }

  void displayBooks() {
    print('Kitobxonna: $nom');
    for (var book in books) {
      book.display();
    }
  }
}

void main() {
  Book book1 = Book(sarlavhai: '857', aftor: 'Abuabdulohi Rudaki');
  Book book2 = Book(sarlavhai: 'bui juii muliyon', aftor: 'A Rudaki');
  Book book3 = Book(sarlavhai: 'Qobbusnnom', aftor: 'H.koshifii');

  List<Book> bookList = [book1, book2];

  Kitobxona kitobxona = Kitobxona(nom: 'Kitobxonnai milli', books: bookList);

  kitobxona.displayBooks();

  kitobxona.addBook(book3);

  kitobxona.displayBooks();

  kitobxona.removeBook('1984');

  kitobxona.displayBooks();
}
