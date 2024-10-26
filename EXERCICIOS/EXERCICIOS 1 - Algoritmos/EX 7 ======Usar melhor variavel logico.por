programa
{
	
	funcao inicio()
	{
		real salario
		inteiro tempo
		logico aumento = falso

		escreva("Digite o salário do funcionario: \n")
		leia(salario)

		escreva("Digite qual é o tempo de casa: \n")
		leia(tempo)
		
		se (tempo >=5)
		{
			aumento = verdadeiro
		}
		se (aumento == verdadeiro)
		{
			salario = salario * 1.1
			escreva("Parabéns, seu novo salário é: ", salario)
		}
		senao
			escreva("Infelizmente não foi dessa vez")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 85; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {salario, 6, 8, 7}-{tempo, 7, 10, 5}-{aumento, 8, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */