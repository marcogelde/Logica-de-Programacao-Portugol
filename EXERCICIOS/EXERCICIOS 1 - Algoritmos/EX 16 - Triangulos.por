programa
{
	
	funcao inicio()
	{	
		real t1, t2, t3
		escreva("Informe a primeira medida do lado do triângulo: \n")
		leia(t1)
		escreva("Informe a segunda medida do lado do triângulo: \n")
		leia(t2)
		escreva("Informe a terceira medida do lado do triângulo: \n")
		leia(t3)

		se (t1==t2 e t1==t3)
		{
			escreva("Esse é um triângulo equilátero")
		}
		senao se (t1==t2 ou t1==t3 ou t2==t3)
		{
			escreva("Esse é um triângulo isósceles")
		}
		senao se (t1!=t2 e t1!=t3)
		{
			escreva("Esse é um triângulo escaleno")
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */