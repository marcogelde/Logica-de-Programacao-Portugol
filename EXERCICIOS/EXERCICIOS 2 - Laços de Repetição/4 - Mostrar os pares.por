programa
{
	inteiro a[5], b[5], r = 0

	funcao inicio()
	
	{
		para (inteiro i=0; i<5; i++)
			{
				escreva("Digite um valor inteiro e positivo para A e outro para B\nA: ")
				leia(a[i])
				escreva("B: ")
				leia(b[i])
			}
			
		para (inteiro i=0; i<5; i++)
		{
			se (a[i]%2 == 0)
			{
				escreva(a[i]," ")
			}
			se (b[i]%2 == 0)
			{
				escreva(b[i]," ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 149; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */