package tp2;

public class Atividade_POO_Problema {

    public static void main(String[] args) {

        Console nintendo = new Console("Nintendo Switch","nintendo",2000);
        Console playstation = new Console("Playstation 5","playstation", 3000);
        Console portatil = new Console("Playstation Portátil", "portatil", 2500);

        Loja loja = new Loja();
        loja.venderConsole((IConsole) nintendo);
        loja.venderConsole((IConsole) playstation);
        loja.venderConsole((IConsole) portatil);
    }
}


