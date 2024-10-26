programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		real f, c, k
		escreva("Informe a temperatura em Fahrenheit: \n")
		leia(f)
		limpa()
		c = (f-32)/1.8
		k = (f + 459.67) * 5/9
		escreva("Temperatura em graus Fahrenheit: ",f," F\nTemperatura em graus Celsius: ",m.arredondar(c, 2),"º C\nTemperatura em Kelvin: ",m.arredondar(k, 2)," K")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {f, 7, 7, 1}-{c, 7, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */