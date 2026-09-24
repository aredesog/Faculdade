package Console;

public class PlaystationPortatil extends Playstation {

    public PlaystationPortatil(DadosConsole dadosConsole) {
        super(dadosConsole);
    }
    @Override
    public void ligar() {
        System.out.println("Ligando essa merda");
    }

    @Override
    public String getNome() {
        return null;
    }

    @Override
    public double calcularPreco() {
        return (calcularPreco() * 0.2);
    }
}
