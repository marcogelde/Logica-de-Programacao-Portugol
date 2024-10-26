programa
{
	inteiro vetor[10], par[10], impar[10], parx=0, imparx=0
	
	funcao inicio()
	{
		para(inteiro i=0; i<10; i++)
		{
			escreva("Qual o ",i+1,"º número? ")
			leia(vetor[i])
			se (vetor[i]%2==0)
			{
				par[parx] = vetor[i]
				parx++
			}senao{
				impar[imparx] = vetor[i]
				imparx++
			}
			limpa()
		}
		escreva("Os números pares são:\n")
		para(inteiro i=0; i<parx; i++)
		{
			escreva(par[i],"\n")
		}

		escreva("\nOs números ímpares são:\n")
		para(inteiro i=0; i<imparx; i++)
		{
			escreva(impar[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */