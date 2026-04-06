package EXERCICIOS.Banco;

import java.util.Scanner;

public class main {
    public static void main(String[] args) {
        Conta Pedro = new Conta(1000);
        //EX1
        System.out.println("Saldo inicial: " + Pedro.getSaldo());
        Pedro.depositar(500);
        System.out.println("Saldo do pedro: " + Pedro.getSaldo());

        //EX2
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o valor para depositar: ");
        double valorDeposito = scanner.nextDouble();
        Pedro.depositar(valorDeposito);
        System.out.println("Saldo do pedro: " + Pedro.getSaldo());

    }
}
