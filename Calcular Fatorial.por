programa
{
	
	funcao inteiro fatorial (inteiro v)
	{
		se (v <= 1)
		{
			retorne 1
		}
		senao
		{
			retorne v * fatorial(v-1)
		}
	}
	
		inteiro numero
		
	funcao inicio()
	{
		
		escreva("Digite um número para descobrir o fatorial: \n")
		leia(numero)
		escreva("O fatorial de ", numero, " é ", fatorial(numero))
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 238; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */