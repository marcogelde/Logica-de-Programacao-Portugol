programa
{
	inclua biblioteca Matematica-->m
	real cotacao,valor, conversao
	funcao inicio()
	{
		escreva("Qual a cotação do dólar atualizado: ")
		leia (cotacao)
		escreva("Qual valor você deseja converter para dólar? R$")
		leia(valor)
		conversao = valor/cotacao
		escreva("R$",valor," em dólar fica: $",m.arredondar(conversao, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */