package DesingPatterns.Proxy;

import java.util.HashMap;
import java.util.Map;

public class BookSearchCacheProxy implements BookSearchInterface{
    private BookSearchInterface base;
    //biblioteca/cache
    private Map <String, Book> bibliotcea = new HashMap<>();

    public BookSearchCacheProxy(BookSearchInterface base) {
        this.base = base;
    }

    //metodo cache - preciso entender melhor ainda


    @Override
    public Book getBook(String ISBN) {

        if (bibliotcea.containsKey(ISBN)) {
            System.out.println("Livro encontrado no cache - ISBN: " + ISBN);
            return bibliotcea.get(ISBN);
        }

        System.out.println("Livro não está no cache");
        Book book = base.getBook(ISBN);
        bibliotcea.put(ISBN, book);

        return book;
    }
}
