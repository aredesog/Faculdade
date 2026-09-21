package DesingPatterns.Singleton;

/**
 * Exercício sobre o padrão de projeto Singleton
 */

class Logger {

    // TODO (1): impeça que outras classes criem instâncias de Logger
    // diretamente com "new Logger()". Dica: qual modificador de acesso
    // você pode usar no construtor para isso?
    private Logger(){}

    // TODO (2): crie aqui um atributo estático e privado para guardar
    // a única instância de Logger que poderá existir.
    private static Logger instancia; //atributo estatico pertence somente a classe, nao é um obj instanciado para as demais classes.

    // TODO (3): crie um método público e estático chamado getInstance(),
    // que devolva a instância única de Logger — criando-a apenas na
    // primeira vez que for chamado, e reaproveitando-a nas chamadas seguintes.
    public static Logger getInstance(){
        if(instancia == null){
             instancia = new Logger();
        }
        return instancia;
    }

    public void println(String msg) {
        // registra msg na console, mas poderia ser em um arquivo
        System.out.println(msg);
    }

}