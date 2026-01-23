#include <iostream> //entrada e saída
#include <fstream> //manipulação dos arquivos
#include <sstream> //
#include <cmath> //Fazer contas matemáticas
#include <string> //Usar funções string

using namespace std;

int main() {
    
    ifstream arquivo("cenagrafica.txt"); //Faz a leitura do aquivo cenagráfica.txt (criado manualmente).
    string linha, tipo;
    float areaTotal = 0, volumeTotal = 0;

    while (getline(arquivo, linha)) {
        if (linha == "fim")
            cout << "Fim do código";

        stringstream ss(linha);
        ss >> tipo;

        if (tipo == "quadrado") { //Cálculo da área do Quadrado (2d)
            float l;
            ss >> l;
            areaTotal += l * l;
        } else if (tipo == "retangulo") { //Cálculo da área do Retângulo (2D)
            float b, h;
            ss >> b >> h;
            areaTotal += b * h;
        } else if (tipo == "triangulo") { //Cálculo da área do Triângulo (2D)
            float b, h;
            ss >> b >> h;
            areaTotal += (b * h) / 2;
        } else if (tipo == "cubo") {
            float l;
            ss >> l;
            volumeTotal += l * l * l;
        } else if (tipo == "paralelepipedo") {
            float c, l, h;
            ss >> c >> l >> h;
            volumeTotal += c * l * h;
        } else if (tipo == "cilindro") {
            float r, h;
            ss >> r >> h;
            volumeTotal += 3.14 * r * r * h;
        } else if (tipo == "cone") {
            float r, h;
            ss >> r >> h;
            volumeTotal += (3.14 * r * r * h) / 3;
        } else if (tipo == "esfera") {
            float r;
            ss >> r;
            volumeTotal += (4.0 / 3.0) * 3.14 * r * r * r;
        }
    }

    arquivo.close(); //Fecha o arquivo após fazer as leituras e as contas.

    cout << "\nÁrea total das figuras 2D: " << areaTotal << endl; //Exibe o valor total das somas das áreas das figuras 2D 
    cout << "Volume total das figuras 3D: " << volumeTotal << endl; //Exibe o valor total das somas dos volumes das figuras 3D

    return 0;
}
