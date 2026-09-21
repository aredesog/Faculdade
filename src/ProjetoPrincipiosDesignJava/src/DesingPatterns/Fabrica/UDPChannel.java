package DesingPatterns.Fabrica;

// TODO (3): crie aqui uma classe UDPChannel, também implementando IChannel,
// cujo método connect() imprima "Conectando via UDP..."
// (essa classe vai servir para você testar a troca de implementação no final)

public class UDPChannel implements IChannel{

    public void connect(){
        System.out.println("COnectando via UDP...");
    }
}
