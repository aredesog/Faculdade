#include <iostream>

using namespace std;

int main() {

    int vetor[50]= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,31, 32, 33, 34, 35, 36, 37, 38, 39, 40,41, 42, 43, 44, 45, 46, 47, 48, 49};
            
    //leitura do maior e menor valor do vetor
    int maior = vetor[0];
    int menor = vetor[0];

    for (int i = 1; i < 50; i++) {
        if (vetor[i] > maior) {
            maior = vetor[i];
        }
        if (vetor[i] < menor) {
            menor = vetor[i];
        }
    }

    cout << "Maior valor: " << maior << endl;
    cout << "Menor valor: " << menor << endl;

    for (int i = 0; i < 50; i++) {
        cout << "vetor[" << i << "] = " << vetor[i] << endl;
    }

    return 0;
}