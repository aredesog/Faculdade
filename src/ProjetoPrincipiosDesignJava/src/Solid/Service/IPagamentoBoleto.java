package Solid.Service;

public interface IPagamentoBoleto {
    void gerarBoleto(double valor);
    void pagar(double valor);

}
