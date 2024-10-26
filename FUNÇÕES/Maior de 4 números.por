programa
{
	funcao inicio()
	{
		real	n1, n2, n3, n4
		escreva("Quais serão seus 4 números? \n1º: ")
		leia(n1)
		escreva("2º: ")
		leia(n2)
		escreva("3º: ")
		leia(n3)
		escreva("4º: ")
		leia(n4)
		escreva("\nO maior é: ", maior(n1, n2, n3, n4))
	}

	funcao real maior(real a, real b, real c, real d)
	{
		se (a>=b e a>=c e a>=d)
		{
			retorne a
		}

		senao se (b>=a e b>=c e b>=d)
		{
			retorne b
		}

		senao se (c>=a e c>=b e c>=d)
		{
			retorne c
		}
		senao retorne d
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */