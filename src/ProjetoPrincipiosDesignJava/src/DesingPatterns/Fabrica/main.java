package DesingPatterns.Fabrica;

public class main {

    void f() {
        // TODO (5): O que deve ser alterado aqui?
        TCPChannel c = new TCPChannel();
        c.connect();
    }

    void g() {
        // TODO (6): faça a mesma alteração da dica (5) aqui
        TCPChannel c = new TCPChannel();
        c.connect();
    }

    void h() {
        // TODO (7): faça a mesma alteração da dica (5) aqui
        TCPChannel c = new TCPChannel();
        c.connect();
    }

    public static void main(String[] args) {
        main m = new main();
        m.f();
        m.g();
        m.h();
    }

}

// TODO (8) [extra]: depois de terminar, altere apenas o método create() da
// ChannelFactory para retornar um UDPChannel em vez de um TCPChannel, e rode
// o programa novamente. Repare que nenhuma outra classe precisou ser alterada.