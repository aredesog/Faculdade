package DesingPatterns.Fachada;

public class GameFacade {

    SistemaDeGraficos graficos = new SistemaDeGraficos();
    SistemaDeAudio audio = new SistemaDeAudio();
    SistemaDeRede rede = new SistemaDeRede();
    SistemaDeSave save = new SistemaDeSave();

    void iniciarModoHistoria() {

        graficos.inicializar();
        audio.inicializar();
        save.carregarProgresso();
        graficos.carregarTexturas();
        audio.tocarMusicaTema();
    }

    void iniciarModoOnline() {

        graficos.inicializar();
        audio.inicializar();
        rede.conectarServidor();
        graficos.carregarTexturas();
        audio.tocarMusicaTema();
    }

    void iniciarModoTreino() {

        graficos.inicializar();
        audio.inicializar();
        graficos.carregarTexturas();
        audio.tocarMusicaTema();
    }

    public GameFacade() {
        graficos = new SistemaDeGraficos();
        audio = new SistemaDeAudio();
        rede = new SistemaDeRede();
        save = new SistemaDeSave();
    }
}
