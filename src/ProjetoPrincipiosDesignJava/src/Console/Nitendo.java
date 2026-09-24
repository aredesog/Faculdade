package Console;

public class Nitendo implements IConsole {

    private DadosConsole dadosConsole;

    public Nitendo(DadosConsole dadosConsole) {
        this.dadosConsole = dadosConsole;
    }

    @Override
    public void ligar() {
        System.out.println("Ligando");
    }

    @Override
    public String getNome() {
        return this.dadosConsole.getNome();
    }

    @Override
    public double calcularPreco() {
        return (dadosConsole.getPrecoBase() * 0.1);
    }
}
