programa
{
	inclua biblioteca Util 		--> u
	inclua biblioteca Matematica 	--> m
	inteiro 	pontos [3][15], geral[15]
	real 	media[15]
	
	funcao inicio()
	{
		lerPontos()
		pontosGeral()
	}

	funcao lerPontos()
	{
		para (inteiro i=0; i<15; i++)
		{
			limpa()
			escreva("=========== Pontos de Novembro ===========")
			escreva("\nQual a pontuação do ",i+1,"º funcionário? ")
			leia(pontos[0][i])
		}

		para (inteiro i=0; i<15; i++)
		{
			limpa()
			escreva("=========== Pontos de Dezembro ===========")
			escreva("\nQual a pontuação do ",i+1,"º funcionário? ")
			leia(pontos[1][i])
		}

		para (inteiro i=0; i<15; i++)
		{
			limpa()
			escreva("=========== Pontos de Janeiro ===========")
			escreva("\nQual a pontuação do ",i+1,"º funcionário? ")
			leia(pontos[2][i])
		}
	}

	funcao pontosGeral()
	{
		limpa()
		para (inteiro i=0; i<15; i++)
		{
			geral[i] = pontos[0][i] + pontos[1][i] + pontos[2][i]
			escreva(i+1,"º funcionário teve um total de ",geral[i]," pontos\n")
		}
	}

	funcao mediaGeral()
	{
		limpa()
		para (inteiro i=0; i<15; i++)
		{
			media[i] = geral[i] / 3
			escreva(i+1,"º funcionário teve uma média de ",media[i]," pontos\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pontos, 5, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */