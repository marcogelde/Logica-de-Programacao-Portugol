programa
{	//multiplica por 0.05 quando a procentagem que precisa é 5%
	inclua biblioteca Matematica --> M
	
	real valor, margem
	funcao inicio()
	{
		escreva("Informe o valor: ")
		leia(valor)

		escreva("\n% Margem ")
		leia(margem)
		margem = margem/100		//Calculo da margem de lucro

		limpa()
		escreva("Valor do produto: R$ ",valor, "\n")
		escreva("Comissão: R$ ", M.arredondar(valor*margem, 2), "\n")
		escreva("Valor de venda: R$ ", M.arredondar((valor*margem)+valor, 2), "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */