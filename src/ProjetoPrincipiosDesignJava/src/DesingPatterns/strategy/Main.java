package DesingPatterns.strategy;

class Main {
    public static void main(String[] args) {
        System.out.println("Lista #1 foi ordenada com a estratégia default: BubbleSort");
        int[] elems1 = {3, 5, 2, 4, 1, 6};
        MyList list1 = new MyList(elems1);
        list1.sort();
        list1.print();

        System.out.println("\nLista #2 foi ordenada com uma outra estratégia: SelectionSort");
        int[] elems2 = {6, 5, 4, 3, 2, 1};
        MyList list2 = new MyList(elems2);
        list2.setTipoOrdenacao("selection");
        list2.sort();
        list2.print();
    }
}

// TODO (1): crie uma classe abstrata SortStrategy com um método abstrato
// sort(int[] elementos).
// TODO (2): crie as classes BubbleSortStrategy e SelectionSortStrategy, cada
// uma estendendo SortStrategy e implementando seu respectivo algoritmo (você
// pode aproveitar a lógica que já está no código-problema).
// TODO (3) em MyList: substitua o atributo tipoOrdenacao (String) por uma
// referência a um objeto SortStrategy; crie um método
// setSortStrategy(SortStrategy) para trocar a estratégia; e reescreva
// sort() para apenas delegar a chamada à estratégia atual.
// TODO (4) no Main: como configurar list2 para usar SelectionSortStrategy
// em vez de "selection"?
