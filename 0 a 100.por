programa
{
	
	inteiro n1, n2, n3, n4, n5, n6, n7, n8, n9
			
	funcao inicio()
	{
		escreva("Pense em um número de 0 a 100: \n")
		escreva("Esse número é:\n(1) Menor que 50\n(2) Maior que 50\n(3) Não é nem maior e nem menor que 50\n")
		leia(n1)
		limpa()
		escolha(n1)
		{
		caso 1:
			menor_que_cinquenta()
		caso 2:
			maior_que_cinquenta()
		caso 3:
			escreva("Seu número é 50")
		}
	}

	funcao menor_que_cinquenta()
	{
		escreva("Seu número é:\n(1) Par\n(2) Ímpar\n")
	}

	funcao maior_que_cinquenta()
	{
						escreva("Seu número é:\n(1) Par\n(2) Ímpar\n")
			leia(n2)
			escolha(n2)
			{
				caso 1:
				pare
				caso 2:
				pare
			}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 479; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */