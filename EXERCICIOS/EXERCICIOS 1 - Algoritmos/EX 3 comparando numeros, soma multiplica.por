programa
{
	
	funcao inicio()
	{
	real a, b, c //Se eu deixar os 3 numero no real a reposta sempre vai ser em real mesmo colocando numero inteiro
	
		escreva("Digite um número pra A e outro pra B:\nA: ")
		leia(a)
		escreva("B: ")
		leia(b)

		se(a==b)
		{
			c = a + b
			escreva("C = ",c)
		}senao
		{
			c = a * b
			escreva("C = ",c)
		}
			
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */