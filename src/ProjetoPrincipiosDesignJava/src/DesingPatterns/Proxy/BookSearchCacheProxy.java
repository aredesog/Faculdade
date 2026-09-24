package DesingPatterns.Proxy;

import java.util.Map;

public class BookSearchCacheProxy implements BookSearchInterface{
    private BookSearchInterface base;
    private Map <String, Book>

    public BookSearchCacheProxy(BookSearchInterface base) {
        this.base = base;
    }

    //metodo cache - preciso entender melhor ainda

}
