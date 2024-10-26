programa
{
	real s, p
	
	funcao inicio()
	{
		escreva("Qual valor do seu salário:\nR$")
		leia(s) limpa()
		escreva("Qual o valor da porcentagem de aumento:\n")
		leia(p) limpa()
		s = s*(p/100)+s
		escreva("Seu salário com aumento de ",p," fica: ",s)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 194; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */