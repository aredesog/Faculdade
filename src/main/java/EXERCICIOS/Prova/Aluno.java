package EXERCICIOS.Prova;

public class Aluno extends Usuario  {
    private double nota;
    private String matricula;

    public double getNota() {
        return nota;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public Aluno(String nome, double nota, String matricula) {
        super(nome);
        this.nota = nota;
        this.matricula = matricula;
    }

    @Override
    public String toString() {
        return "Aluno{" +
                "nota=" + nota +
                ", matricula='" + matricula + '\'' +
                '}';
    }
}
