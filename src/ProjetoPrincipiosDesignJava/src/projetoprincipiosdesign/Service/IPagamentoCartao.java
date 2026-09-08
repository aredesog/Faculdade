package projetoprincipiosdesign.Service;

public interface IPagamentoCartao {
    void pagar(double valor);
    void parcelar(double valor, int parcelas);
}
