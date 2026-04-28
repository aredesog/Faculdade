package EXERCICIOS.Completo;

import java.util.ArrayList;
import java.util.Scanner;

public class main {
    public static void main(String[] args) {
//        int idade;
//        Scanner scanner = new Scanner(System.in);
//        System.out.println("Digite a idade: ");
//        idade = scanner.nextInt();
//        System.out.println(idade);

        //setar o nome do usuario
        //Usuario pedro = new Usuario("Pedro", 21, 123);

//        pedro.setNome("Pedro");
//        pedro.setIdade(44);
//        pedro.setCpf(123);
//       System.out.println(pedro.toString());
//
//      Aluno aredes = new Aluno("Aredes",25,123,2);
//       System.out.println(aredes.toString());

//        String livros[] = {"madame", "pequeno pricipe", "dalmata"};
//        System.out.println(livros[0]);
//
//        int matriz[][] = new int [5][5];
//
//
//        for (int i = 0; i < matriz.length; i ++){
//            for (int j = 0; j < matriz.length; j++){
//                if (i % 2 == 0 && j % 2 == 0){
//                    matriz[i][j] = 3;
//                }
//            }
//        }
//
//        for (int i = 0; i < matriz.length; i ++){
//            for (int j = 0; j < matriz.length; j++){
//                System.out.printf(String.valueOf(matriz[i][j]));
//            }
//            System.out.println();
//        }

        ArrayList<String> livros = new ArrayList<>();
        livros.add("Luan");
        livros.add("Pedrao");
        livros.add("Aredes");

        for (String livro : livros) {
            System.out.println(livro);
        }

    }
}
