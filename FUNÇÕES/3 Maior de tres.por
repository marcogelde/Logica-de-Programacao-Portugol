programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3
		
		escreva("Qual será o seu primeiro número? ")
		leia(n1)
		escreva("Qual será o seu segundo número? ")
		leia(n2)
		escreva("Qual será o seu terceiro número? ")
		leia(n3)
		escreva("O maior é: ", maiorDeTres(n1, n2, n3))
	}

	funcao inteiro maiorDeTres(inteiro a, inteiro b, inteiro c)
	{
		se(a>=b e a>=c)
		{
			retorne a
		}

		senao se(b>=a e b>=c)
		{
			retorne b
		}

		senao
		{
			retorne c
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */