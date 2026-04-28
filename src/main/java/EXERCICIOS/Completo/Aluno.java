package EXERCICIOS.Completo;

import java.util.ArrayList;

public class Aluno extends Usuario {
    private int notaFinal;
    private ArrayList<String> alunos = new ArrayList<>();

    public int getNotaFinal() {
        return notaFinal;
    }

    public void setNotaFinal(int notaFinal) {
        this.notaFinal = notaFinal;
    }

    public Aluno(String nome, int idade, int cpf, int notaFinal) {
        super(nome, idade, cpf);
        this.notaFinal = notaFinal;
    }

    @Override
    public String toString() {
        return super.toString() + ", nota final: " + notaFinal;
    }

}
