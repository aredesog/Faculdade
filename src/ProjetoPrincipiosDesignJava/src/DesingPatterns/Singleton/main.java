package DesingPatterns.Singleton;

import projetoprincipiosdesign.Principal.Main;

class main {

    void teste() {
        // Logger log = new Logger(); // após a dica (1), esta linha deve
        // deixar de compilar. Descomente para testar (e comente de novo depois).
    }

    void f() {
        // TODO (4): o que deve ser alterado aqui?
        Logger log = new Logger();
        log.println("Executando f " + log);
    }

    void g() {
        // TODO (5): faça a mesma alteração da dica (4) aqui
        Logger log = new Logger();
        log.println("Executando g " + log);
    }

    void h() {
        // TODO (6): faça a mesma alteração da dica (4) aqui
        Logger log = new Logger();
        log.println("Executando h " + log);
    }

    public static void main(String[] args) {
        main m = new main();
        m.f();
        m.g();
        m.h();
        // TODO (7) [extra]: descomente a linha abaixo e rode o programa.
        // Compare o ID impresso aqui com os IDs impressos por f(), g() e h().
        // System.out.println("Observe que as 3 chamadas executaram no mesmo objeto, com ID: " + Logger.getInstance());
    }

}
