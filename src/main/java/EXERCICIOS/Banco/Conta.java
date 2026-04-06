package EXERCICIOS.Banco;

public class Conta {
    private double saldo;

    public Conta(double saldo) {
        this.saldo = saldo;
    }

    public double getSaldo() {
        return saldo;
    }

    public double depositar(double valor){
        saldo = saldo + valor;
        return valor;
    }

    public double sacar(double valor){
        saldo = saldo - valor;
        return valor;
    }
}
