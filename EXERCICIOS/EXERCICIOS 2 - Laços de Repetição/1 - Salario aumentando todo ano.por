programa
{
	inclua biblioteca Matematica-->M
	inclua biblioteca Calendario-->C
	
	real salario = 1015.00, aumento = 0.015
	inteiro ano = 1996
	
	funcao inicio()
	{
		para (ano = 1997; ano <= C.ano_atual(); ano++)
		{
			aumento = aumento * 2
			salario = salario + (aumento*salario)
			escreva("O salário no ano de ",ano," com um aumento de ",M.arredondar(aumento, 2),"% fica: R$",M.arredondar(salario, 2),"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {salario, 6, 6, 7}-{aumento, 6, 25, 7}-{ano, 7, 9, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */