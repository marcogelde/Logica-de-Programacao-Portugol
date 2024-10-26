programa
{
	
	funcao inicio()
	{	
		inteiro resto, a, b
		real x, y, quociente
		
		escreva("Digite um valor: \n")
		leia(x)
		escreva("Digite outro valor: \n")
		leia(y)
		quociente = x/y
		a = x
		b = y
		resto = a % b
		escreva("Divindo ",x," pelo ",y," temos: ",quociente," com resto de: ",resto,"\n")


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 210; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */