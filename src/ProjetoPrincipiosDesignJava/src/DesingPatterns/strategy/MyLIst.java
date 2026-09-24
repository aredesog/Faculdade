package DesingPatterns.strategy;

class MyList {

    private int[] elementos;
    private String tipoOrdenacao; // "bubble" ou "selection"

    public MyList(int[] elementos) {
        this.elementos = elementos;
        this.tipoOrdenacao = "bubble"; // default
    }

    public void setTipoOrdenacao(String tipo) {
        this.tipoOrdenacao = tipo;
    }

    // Problema: este método concentra a lógica de todos os algoritmos de
    // ordenação existentes, decidindo qual usar através de um if/else
    // baseado em uma String. Sempre que um novo algoritmo de ordenação for
    // necessário, será preciso alterar este método (violando o princípio
    // Aberto/Fechado), além de misturar, na mesma classe, a responsabilidade
    // de "ser uma lista" com a de "saber implementar vários algoritmos de
    // ordenação".
    public void sort() {
        if (tipoOrdenacao.equals("bubble")) {
            int n = elementos.length;
            int temp = 0;
            for (int i = 0; i < n; i++) {
                for (int j = 1; j < (n - i); j++) {
                    if (elementos[j - 1] > elementos[j]) {
                        temp = elementos[j - 1];
                        elementos[j - 1] = elementos[j];
                        elementos[j] = temp;
                    }
                }
            }
        } else if (tipoOrdenacao.equals("selection")) {
            for (int i = 0; i < elementos.length - 1; i++) {
                int index = i;
                for (int j = i + 1; j < elementos.length; j++) {
                    if (elementos[j] < elementos[index]) {
                        index = j;
                    }
                }
                int smallerNumber = elementos[index];
                elementos[index] = elementos[i];
                elementos[i] = smallerNumber;
            }
        }
    }

    public void print() {
        System.out.println(Arrays.toString(elementos));
    }
}