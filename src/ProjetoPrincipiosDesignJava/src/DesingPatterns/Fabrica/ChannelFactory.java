package DesingPatterns.Fabrica;

// TODO (4): crie aqui uma classe ChannelFactory com um método fábrica
// estático create(), que centralize a decisão de qual Channel instanciar.
// Ex.: public static Channel create() { ... return new TCPChannel(); }

import java.nio.channels.Channel;

public class ChannelFactory {


    //DUVIDA SINCERA: COMO RETORNAR UDP OU TCP AQUI
  public static IChannel create(){
      //retornar um canal UDP ou TCP
      return new TCPChannel(); // Ou "return new UDPChannel();" se quiseres alternar
  }
}
