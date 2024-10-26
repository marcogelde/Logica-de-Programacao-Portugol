programa
{
	inteiro n, dois[7], tres[7], ambos[7]
	
	funcao inicio()
	{
		escreva("Vamos descobrir se os números são múltiplos de 2 e 3\n")
		
		para (inteiro i=0; i<=6; i++)
		{
			escreva("Escreva o seu ", i+1,"º número inteiro: \n")
			leia(n)
			se (n%2==0)
			{
				dois[i]=n	
			}
			se (n%3==0)
			{
				tres[i]=n
			}
			se (n%2==0 e n%3==0)
			{
				ambos[i]=n
			}
		}
		limpa()

		escreva("Seus números múltiplos de 2 são: \n")
		
		para (inteiro i=0; i<=6; i++)
		{
			se (dois[i] != 0)
			{
			escreva(dois[i], " ")
			}
		}
		escreva("\nSeus números múltiplos de 3 são: \n")
		
		para (inteiro i=0; i<=6; i++)
		{
			se (tres[i] != 0)
			{
			escreva(tres[i], " ")
			}
		}
		escreva("\nSeus números múltiplos de 2 e 3 são: \n")
		
		para (inteiro i=0; i<=6; i++)
		{
			se (ambos[i] != 0)
			{
			escreva(ambos[i], " ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 745; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */