package tp2;

public class Playstation implements IConsole{

    //protected para acessar das demais classes
    protected DadosConsole dadosConsole;

    public Playstation(DadosConsole dadosConsole) {
        this.dadosConsole = dadosConsole;
    }

    @Override
    public void ligar() {
        System.out.println("Ligando Play");
    }

    @Override
    public String getNome() {
        return this.dadosConsole.getNome();
    }

    @Override
    public double calcularPreco() {
        return (dadosConsole.getPrecoBase() * 0.2);
    }
}
