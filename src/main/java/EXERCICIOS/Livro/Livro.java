package EXERCICIOS.Livro;

public class Livro {
    private String titulo;
    private int ano;
    private String autor;

    @Override
    public String toString() {
        return "Titulo: " + titulo +
                ", ano: " + ano +
                ", autor: " + autor;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
}
