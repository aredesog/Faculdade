package DesingPatterns.Proxy;

class BookSearch implements BookSearchInterface {

    public Book getBook(String ISBN) {
        System.out.println("Pesquisando no objeto base - ISBN " + ISBN);
        if (ISBN.equals("2")) {
            return new Book("GoF");
        }
        return null;
    }

}
