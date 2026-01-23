#include <fstream>
#include <iostream>
#include <cstdlib>

using namespace std;

typedef struct registro {
    string nome;
    string email; // string funciona para demais caracteres(CIDADE), char é apenas para um caracter(X)!
    int celular;
    string cidade;
} amigo;

int main() {

    int i, A;

    ofstream arquivo("amigos.txt");
    if (!arquivo) {
        cout << "Erro ao abrir o arquivo!" << endl;
        return 1;
    }
    amigo amigo;
    cout << "Qual o número de amigos? ";
    cin >> A;

    for (int i = 0; i < A; i++) {
        cout << "Digite o nome do seu amigo: " << endl;
        cin >> amigo.nome;
        cout << "Digite o email do seu amigo: " << endl;
        cin >> amigo.email;
        cout << "Digite o celular do seu amigo: " << endl;
        cin >> amigo.celular;
        cout << "Digite a cidade do sue amigo: " << endl;
        cin >> amigo.cidade;

        arquivo << amigo.nome << "  " << amigo.email << "  " << amigo.celular << "  " << amigo.cidade << endl;
    }
    arquivo.close();
    
switch (opcao){

case 1:
    
    break;
}

return 0;
}

