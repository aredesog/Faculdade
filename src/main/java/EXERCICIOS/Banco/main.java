package EXERCICIOS.Banco;

public class main {
    public static void main(String[] args) {
        Conta Pedro = new Conta(1000);
        System.out.println(Pedro.getSaldo());
        Pedro.depositar(500);
        System.out.println("Saldo do pedro: " + Pedro.getSaldo());
    }
}
