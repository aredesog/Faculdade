package Solid.Pagamento;

import Solid.Service.IPagamentoPix;

public class PagamentoPix implements IPagamentoPix {
    @Override
    public void pagar(double valor) {
        System.out.printf("PIX pago: R$ %.2f%n", valor);
    }
}