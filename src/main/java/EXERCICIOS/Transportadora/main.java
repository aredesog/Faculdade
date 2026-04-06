package EXERCICIOS.Transportadora;

public class main {
    public static void main(String[] args) {
        System.out.println("Criando um veiculo...");
        Veiculo testeVeiculo1 = new Veiculo(0, 10000);

        System.out.println("Carga atual: " + testeVeiculo1.getCarga());
        System.out.println("Carga máxima: " + testeVeiculo1.getCargaMaxima());

        testeVeiculo1.adcCarga(500);
        testeVeiculo1.adcCarga(1100);


    }
}
