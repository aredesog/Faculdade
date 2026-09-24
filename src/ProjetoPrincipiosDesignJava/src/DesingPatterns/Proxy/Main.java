package DesingPatterns.Proxy;

// TODO (1): crie uma nova classe (ex.: "BookSearchCacheProxy") que implemente
// BookSearchInterface, seguindo a mesma estrutura de BookSearchProxy — ou seja,
// ela também deve encapsular uma referência a um BookSearchInterface.


// TODO (2): adicione a essa classe um atributo para representar o cache.
// Para este exercício, você pode simular uma biblioteca de cache real usando
// um Map<String, Book>.


// TODO (3): implemente o método getBook(ISBN) desta classe. Antes de delegar
// a chamada ao objeto encapsulado, que verificação precisa ser feita?
// O que deve acontecer em cada um dos dois casos possíveis (livro já está
// no cache / livro ainda não está no cache)?


class Main {

    public static void main(String[] args) {
        BookSearch bs = new BookSearch();
        BookSearchProxy pbs = new BookSearchProxy(bs);

        // TODO (4): como usar a nova classe de cache junto com o que já existe
        // (bs e pbs), sem remover o comportamento atual? Teste pesquisando o
        // mesmo ISBN duas vezes seguidas e observe a diferença na saída do
        // console entre a primeira e a segunda chamada.

    }

}
