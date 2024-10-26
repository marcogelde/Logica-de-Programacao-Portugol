programa
{
	inteiro n, par
	
	funcao inicio()
	{
		escreva("Escreva um número qualquer: \n")
		leia(n)
		limpa()
	
		par = (n % 2)
		se (par==0)
		{
		escreva("Esse número é par")
		} senao
			escreva("Esse número é impar")
		
		se (n<0)
		{ escreva(" e negativo.")
		}senao
			escreva(" e positivo.")	 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */