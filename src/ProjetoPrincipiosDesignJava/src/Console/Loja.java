package Console;

import java.util.List;

class Loja {

    public void venderConsole(IConsole console) {
    console.ligar();
    }

    public void venderVarios(List<IConsole> consoles){
        for (IConsole console : consoles) {
            venderVarios(consoles);
        }
    }

    public double calcularFaturamentoTotal(List<IConsole> consoles){
        double total = 0;
        for (IConsole console : consoles) {
            total += console.calcularPreco();
        }
        return total;
    }
}
