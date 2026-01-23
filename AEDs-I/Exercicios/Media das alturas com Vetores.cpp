#include <iostream> //entrada e saída
#include <fstream>//manipulação dos arquivos
#include <sstream> //manipulação de fluxos baseados em strings
#include <cmath> //Fazer contas matemáticas
#include <string> //Usar funções string


using namespace std;

int main(int argc, char** argv) {

    const int k = 10; // é uma constante para substituir todos vos valores que repetem.
    float valor, x, altura[10]; // entre colchetes tem que ser sempre um valor inteiro. (declarar -> constante; variavel; expressão. )
    int z, soma, i, media; //declaração da variavel de auxilio

    media = 0; // NAO ESQUECER DE ZERAR AS VARIAVEIS, SE NAO VAI DAR UM NUMERO ABSURDO
    soma = 0; // NAO ESQUECER DE ZERAR AS VARIAVEIS, SE NAO VAI DAR UM NUMERO ABSURDO
    z = 0;// NAO ESQUECER DE ZERAR AS VARIAVEIS, SE NAO VAI DAR UM NUMERO ABSURDO
    x = 0; // NAO ESQUECER DE ATRIBUIR AS VARIAVEIS , SE NAO VAI DAR UM NUMERO ABSURDO
    

    //Leitura do  vetor
    i = 0;
    while (i < k) {
        cout << "Digite o " << i + 1 << "°, valor: "; // pede os valores 
        cin >> altura[i]; // lê e armazena os valores
        x = x + altura[i]; //faz a soma dos valores
        i++;
    }

    //Escrita do  vetor
    i = 0;
    cout << "Qual altura o senhor desejaria ser informado?"; 
    cin >> valor;
    while (i < k) {
        cout << "O " << i + 1 << "° valor é: " << altura[i] << endl;

        if (altura[i] > x / k) {
            soma = soma + 1; // Vê quantos valores tem acima da média 
            
            }
        if (altura[i] == valor){
                z = z + 1; // faz a contagem de quantas alturas são repetidas de que ele pediu
        }

        i++;
    }

    cout << "A média das alturas foi de :" << x / k << endl;
    cout << "Os valores que estão acima da média são:" << soma << endl;
    cout << "O numero de alturas iguais informadas são: " << z << endl;
    
    return 0;
}
