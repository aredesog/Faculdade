#include <iostream>
#include <cstdlib>
#include <stdio.h>

using namespace std;

int main() {

    string senha, senhad;
    int tentativa;

    senha = "algoritimo123";
    tentativa = 1;

    cout << "Digite a senha: ";
    cin >> senhad;



    while (senhad != senha and tentativa < 3) {
        cout << "Tente novamente:";
        cin >> senhad;
        tentativa = tentativa + 1;
    }
        if (senhad == senha) {
            cout << "Senha está correta";
        }
        else {
            cout << "Você excedeu o limite de senhas possíveis!" << endl;
        }


    return 0;
}
