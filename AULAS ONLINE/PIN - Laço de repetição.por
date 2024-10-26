programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro n, pin, i

		escreva("Até qual número você deseja ver o PIN no múltiplo de 4:\n")
		leia(n)
		para(i=0; i<=n; i++)
		{
			pin = i % 4
			se(pin==0)
			{
				escreva("\nPIN")
			}
			senao
			{
				escreva("\n",i)
			}
			Util.aguarde(400)
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */