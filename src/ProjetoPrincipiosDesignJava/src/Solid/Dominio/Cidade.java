package Solid.Dominio;

public class Cidade {

    private String nome;
    private String estado;

    public Cidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
