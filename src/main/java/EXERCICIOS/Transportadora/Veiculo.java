package EXERCICIOS.Transportadora;

public class Veiculo {

    private int carga;
    private int cargaMaxima;


    public int getCarga() {
        return carga;
    }

    public void setCarga(int carga) {
        this.carga = carga;
    }

    public int getCargaMaxima() {
        return cargaMaxima;
    }

    public void setCargaMaxima(int cargaMaxima) {
        this.cargaMaxima = cargaMaxima;
    }

    public Veiculo(int carga, int cargaMaxima) {
        this.carga = carga;
        this.cargaMaxima = cargaMaxima;
    }

    public int adcCarga(double carga){
        System.out.println("Adicionando carga...");
        double cargaTotal = getCarga() + carga;
        System.out.println(cargaTotal);
        return (int) cargaTotal; //casting
    }
}