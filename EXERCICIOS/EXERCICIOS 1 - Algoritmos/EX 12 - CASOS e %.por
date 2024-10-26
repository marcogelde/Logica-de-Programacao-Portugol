programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		real 	produto, juros
		inteiro	pagamento
		
		escreva("Qual o valor do produto? \nR$") leia(produto) limpa()
		escreva("Qual o método de pagamento? \n1: À vista no Dinheiro ou Pix = 15% de desconto\n")
		escreva("2: À vista no cartão de crédito = 10% de desconto\n")
		escreva("3: Parcelado no cartão em duas vezes = Preço normal sem juros\n")
		escreva("4: Parcelado no cartão em 3x ou mais = Preço normal mais juros de 10%\n")
		leia(pagamento) limpa()

		escolha(pagamento)
		{
		caso 1:
			juros = produto*0.15
			produto = produto - juros
			escreva("Você terá que pagar: R$", m.arredondar(produto, 2))
		pare
		caso 2:
			juros = produto*0.1
			produto = produto - juros
			escreva("Você terá que pagar: R$", m.arredondar(produto, 2))
		pare
		caso 3:
			escreva("Você terá que pagar: R$", m.arredondar(produto, 2))
		pare
		caso 4:
			juros = produto*0.1
			produto = produto + juros
			escreva("Você terá que pagar: R$", m.arredondar(produto, 2))
		pare
		caso contrario:
			escreva("Escolha um numero de 1 a 4")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 930; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */