package EXERCICIOS.Completo;

public class Usuario {
    private String nome;
    private int idade;
    private int cpf;

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "Usuario: " + nome +
                ", idade: " + idade +
                ", cpf: " + cpf;
    }

    public Usuario(String nome, int idade, int cpf) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
    }
}
