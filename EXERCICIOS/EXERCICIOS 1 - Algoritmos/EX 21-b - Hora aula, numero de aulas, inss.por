programa
{
	inclua biblioteca Matematica-->m
	funcao inicio()
	{
		real hora, n, bruto, inss, salario
		
		escreva("Digite o valor da hora aula:\n")
		leia(hora)
		escreva("Digite o número de aulas lecionadas:\n")
		leia(n)
		bruto = hora*n
		escreva("Digite o percentual de desconto do INSS:\n")
		leia(inss)
		salario = bruto - bruto * (inss/100)
		escreva("O Salário Liquido desse professor fica: R$",m.arredondar(salario, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 442; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */