programa
{
	real a, b, c, soma

	funcao inicio()
	{
		escreva("Digite o valor de A: \n")
		leia(a) limpa()

		escreva("Digite o valor de B: \n")
		leia(b) limpa()

		escreva("Digite o valor de C: \n")
		leia(c) limpa()

		soma = a + b

		se (soma < c)
		escreva("A soma de A e B é menor que C\n\n\n")

		senao
		escreva("A soma de A e B não é menor que C\n\n\n")		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */