#include <stdio.h> // Necessário para printf

struct aluno { // Definição da estrutura para armazenar os dados do aluno
    int matricula; // Matrícula do aluno 
    float nota1, nota2; // Duas notas do aluno 
};

// Supondo que 'turma' já está preenchida com 30 alunos
// struct aluno turma[30]; 

int main() {
    // Exemplo de preenchimento (apenas para testar o código)
    // Em um cenário real, 'turma' estaria preenchida por alguma outra parte do programa.
    struct aluno turma[30];
    for (int i = 0; i < 30; i++) {
        turma[i].matricula = 1000 + i; // Exemplo de matrícula
        turma[i].nota1 = 7.0 + (i % 3); // Exemplo de nota1
        turma[i].nota2 = 6.5 + (i % 4); // Exemplo de nota2
    }

    // Percorrer a estrutura para calcular a média e apresentar os resultados
    for (int i = 0; i < 30; i++) { // Loop para iterar sobre os 30 alunos 
        float media = (turma[i].nota1 + turma[i].nota2) / 2.0; // Cálculo da média 
        printf("Matricula: %d, Media: %.2f\n", turma[i].matricula, media); // Apresenta matrícula e média 
    }

    return 0;
}