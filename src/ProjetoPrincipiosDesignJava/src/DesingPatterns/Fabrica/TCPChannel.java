package DesingPatterns.Fabrica;

/**
 * Exercício sobre o padrão de projeto Fábrica
 */

// TODO (1): crie aqui uma interface chamada "IChannel", com um método connect()
// Ela vai representar o "produto" que a fábrica saberá criar.


class TCPChannel implements IChannel {
    // TODO (2): faça esta classe implementar a interface IChannel
    private TCPChannel tcpChannel;
    // (isso é necessário para que ela possa ser retornada pela fábrica)

    public void connect() {
        System.out.println("Conectando via TCP...");
    }
}

