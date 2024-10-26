programa
{inclua biblioteca Matematica

	real num1, num2, soma, subtracao, multiplicacao, divisao, resto
	inteiro num3, num4
	funcao inicio()
	{

   escreva("Calculadora Simples\n")
   escreva("--------------------\n")
   escreva("Digite o primeiro número: ")
   leia(num1)
   num3 = num1
   
   escreva("Digite o segundo número: ")
   leia(num2)
   num4 = num2
  
   soma = num1 + num2
   subtracao = num1 - num2
   multiplicacao = num1 * num2
   divisao = num1 / num2
   resto = num3 % num4

   escreva("\nResultados:\n")

   escreva("\nAdição: ", soma)
   escreva("\nSubtração: ", subtracao)
   escreva("\nMultiplicação: ", multiplicacao)
   escreva("\nDivisão: ", Matematica.arredondar(divisao, 2))
   escreva("\nResto da divisão: ", resto)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */