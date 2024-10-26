programa
{
	const 	inteiro	quant=5
			inteiro	i=0
	
	funcao inicio()
	{
		
		real vetor[quant]
		
		para(i=0; i<quant; i++)
		{
			escreva("Qual seu ",i+1,"º número? ")
			leia(vetor[i])
		}
		limpa()
		escreva("A média é: ", media(vetor))
	}

	funcao real media(real vetor[])
	{
		real soma=0.0
		
		para(i=0; i<quant; i++)
		{
			soma = soma + vetor[i]
		}
		retorne soma/quant
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */