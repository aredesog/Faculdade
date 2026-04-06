package EXERCICIOS.Livro;

public class mainLivro {
    public static void main(String[] args) {

        // Criando um objeto da classe Livro
        Livro livro1 = new Livro();

        livro1.setTitulo("O Senhor dos Anéis");
        livro1.setAno(1954);
        livro1.setAutor("Tolkien");

        System.out.println(livro1);
    }
}
