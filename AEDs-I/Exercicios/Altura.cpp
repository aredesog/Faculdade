#include <cstdlib>
#include <stdio.h>
#include <iostream>
#include <time.h>

using namespace std;

int main(int argc, char** argv) {

    float altura, i, soma, media, maior, menor;


    i = 0;
    soma = 0;


    scanf("%f", &altura);
    maior = altura;
    menor = altura;
    while (altura != 0) {
        soma = soma + altura;
        i = i + 1;

        if (altura > maior) {
            maior = altura;
            }

        if (altura < menor) {
            menor = altura;
        }
         scanf("%f", &altura);
    }

    media = soma / i;    
    printf("\n\tA maior altura é = %.2f", maior);
    printf("\n\tA menor altura é = %.2f", menor);
    printf("\n\tMédia das alturas é : %.2f", media);

    return 0;
}
