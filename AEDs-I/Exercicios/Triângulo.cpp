
#include <cstdlib>
#include <stdio.h>
#include <cmath>

using namespace std;

int main(int argc, char** argv) {

    float L1, L2, L3;

    printf("digite o valor do lado 1: ");
    scanf("%f", &L1);
    printf("digite oo valor do lado 2:");
    scanf("%f", &L2);
    printf("digite o valor do lado 3:");
    scanf("%f", &L3);
    if ((L1 >= 0) and (L2 >= 0) and (L3 >= 0)) {
        if (((fabs(L2 - L3) < L1 and L1 < L2 + L3) or (fabs(L1 - L3) < L2 and L2 < L1 + L3) or (fabs(L1 - L2) < L3 and L3 < L1 + L2))) {
            printf("Esse triangulo é valido e é um: ");
            if (L1 != L2 and L1 != L3) {
                printf("Escaleno");
                if (((L1 * L1) == (L2 * L2)+(L3 * L3)) or ((L2 * L2) == (L1 * L1)+(L3 * L3)) or (L3 * L3) == (L1 * L1)+(L2 * L2)) {
                    printf(" E tambem é um triangulo retangulo");
                }
            } else if ((L1 == L2 and L2 != L3) or (L3 == L1 and L1 != L2) or (L3 == L2 and L2 != L1)) {
                printf("Isoceles");
                if (((L1 * L1) == (L2 * L2)+(L3 * L3)) or ((L2 * L2) == (L1 * L1)+(L3 * L3)) or (L3 * L3) == (L1 * L1)+(L2 * L2)) {
                    printf(" E tambem é um triangulo retangulo");
                }
            } else if (L1 == L2 and L1 == L3) {
                printf("Equilatero");
            }
        } else {
            printf("\nEsse triangulo não é valido");
        }

    } else {
        printf("Esse triangulo não existe");
    }


    return 0;
}
