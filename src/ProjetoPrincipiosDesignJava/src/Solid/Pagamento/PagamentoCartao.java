package Solid.Pagamento;

import Solid.Service.IPagamentoCartao;

public class PagamentoCartao implements IPagamentoCartao {
    @Override
    public void pagar(double valor) {
        System.out.printf("Pagamento no cartão: R$ %.2f%n", valor);
    }

    @Override
    public void parcelar(double valor, int parcelas) {
        System.out.printf(
                "Cartão parcelado em %dx de R$ %.2f%n",
                parcelas,
                valor / parcelas
        );
    }
}

