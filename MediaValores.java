package Curso;

import java.util.Scanner;

public class MediaValores {
	
	public static void main(String[] args) {

		double n1;
		double n2;
		double n3;
		double n4;
		double soma;
		double media;
		
		Scanner sc = new Scanner(System.in);
		
<<<<<<< HEAD
		System.out.println("Insira seus valores para m�dia (Exemplo: 15 6 4 19)");
=======
		System.out.println("Insira seus valores para média (Exemplo: 15 6 4 19)");
>>>>>>> 2b7e0926a77fdeccb26f838f337f5c40a1cb34f8
		n1 = sc.nextDouble();
		n2 = sc.nextDouble();
		n3 = sc.nextDouble();
		n4 = sc.nextDouble();
		
		soma = n1 + n2 + n3 + n4;
		media = soma / 4;
		
		System.out.println("A média dos valores inseridos é: " + media);
		
		sc.close();
	}
}