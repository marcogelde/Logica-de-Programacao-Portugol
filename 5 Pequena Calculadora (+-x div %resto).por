programa
{
	inclua biblioteca Matematica-->m
	
	//Variáveis globais
	inteiro num1, num2, resultado, resto
	real num3, num4, resultado_div
	
	funcao inicio()
	{
		escreva("Informe o primeiro valor:\n")
		leia(num1)
		num3 = num1
		
		limpa()
		escreva("Informe o segundo valor:\n")
		leia(num2)
		num4 = num2
		
		limpa()
		resultado  = num1 + num2 //Variavel resultado recebe soma
		
		escreva("O resultado da soma é ", resultado)

		resultado = num1 - num2 //Variavel resultado recebe subtração
		escreva("\nO resultado da subtração é ", resultado)

		resultado = num1 * num2 //Variavel resultado recebe multiplicação
		escreva("\nO resultado da multiplicação é ", resultado)

		resultado_div = num3 / num4 //Variavel resultado recebe divisão
		resto = num1 % num2
		escreva("\nO resultado da divisão é ", m.arredondar(resultado_div, 2), " com resto de ", resto)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 808; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */