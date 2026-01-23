#include <cstdlib>
#include <stdio.h>
#include <iostream>
#include <time.h>
#include <fstream>
#include <string.h>

using namespace std;

int main(int argc, char** argv) {

    int max1, min, numero, quantidade;
    
    
    quantidade = 0;
    numero = 0;
    
    cout << "Digite a quantiade de números aleatorios : ";
    cin >> quantidade; 
    cout << "Digite o numero maximo : ";
    cin >> max1;          
    cout << "Digite o numero minimo : ";
    cin >> min;          
    if (min > max1){
        cout << "Erro: numero minimo maior que o numero maximo";
       srand(time(NULL));
       return 1;
    }
     
    ofstream arquivo("gerados");
    if(not arquivo.is_open()){
      cout << "Erro ao abrir o arquivo!" << endl;
      return 1;
    }
        
    while(quantidade > 0){        
    numero = (rand() % (max1 - min + 1)) + min;
    arquivo << numero << endl;
    quantidade --;
    }
    
    arquivo.close();
   
    return 0;
}
