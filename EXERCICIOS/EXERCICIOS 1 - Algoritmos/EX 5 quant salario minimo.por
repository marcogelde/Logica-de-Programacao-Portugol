programa
{
	
	funcao inicio()
	{
	const real salario_minimo = 1412.00
	real salario
	inteiro quant_salario
	
		escreva("Quanto você recebe por mês?\n")
		leia(salario)
		quant_salario = salario / salario_minimo
		
		se (quant_salario == 1)
		{
			escreva("Você recebe ", quant_salario, " salário mínimo.")
		}senao
		escreva("Você recebe ", quant_salario, " salários mínimos.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */