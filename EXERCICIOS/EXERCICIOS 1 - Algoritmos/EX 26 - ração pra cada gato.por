programa
{
	inclua biblioteca Matematica-->m
	inteiro	peso, racao, sobra
	
	funcao inicio()
	{
		escreva("Qual o peso do saco de ração pra gato em kilos?\n")
		leia(peso)
		peso = peso *1000		//Transformar em gramas
		escreva("Quantas gramas você fornece pra cada gato?\n")
		leia(racao)
		racao = racao*2		//calculando a ração diaria de cada gato
		racao = racao*5		//calculando em 5 dias
		sobra = peso - racao
		sobra = sobra/1000		//Transformando em Kilos
		
		escreva("No 5º dia sobrará ", m.arredondar(sobra,2), " quilos de ração")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 546; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */