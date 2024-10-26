programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{	
		inteiro n
		escreva("Qual número você pretende saber o fatorial? ")
		leia(n)
		escreva("O fatorial de ",n, " é ", fatorial(n))
	}

	funcao inteiro fatorial(inteiro n)
	{
		inteiro resultado = 1
		
		para (inteiro i=1; i<=n; i++)
		{
			resultado = resultado * i
		}
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 46; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */