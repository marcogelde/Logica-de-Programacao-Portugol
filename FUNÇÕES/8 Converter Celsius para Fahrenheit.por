programa
{
	funcao inicio()
	{
		escreva("0 graus Celsius em Fahrenheit é: ",celsiusParaFahrenheit(0.0), "\n")
		escreva("100 graus Celsius em Fahrenheit é: ",celsiusParaFahrenheit(100.0), "\n")
	}

	funcao real celsiusParaFahrenheit(real c)
	{
		real fahrenheit = (c*9/5)+32
		retorne fahrenheit
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 272; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */