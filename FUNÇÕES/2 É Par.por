programa
{
	inteiro n1, n2
	
	funcao inicio()
	{
		escreva("Qual número você deseja verificar se é par ou ímpar? ")
		leia(n1)
		escreva(n1," é par? ", Par(n1))
		escreva("\n\nQual número você deseja verificar se é par ou ímpar? ")
		leia(n2)
		escreva(n2," é par? ", Par(n2))

	}
	
	funcao logico Par(inteiro n)
	{
		retorne n%2 == 0
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */