programa
{
	inteiro 	n[5], soma=0
	
	funcao inicio()
	{
		para (inteiro i=0; i<5; i++)
		{
			escreva("Digite o ",i+1,"º número: ")
			leia(n[i])
			soma = soma + n[i]
		}

		escreva("\nOs números digitados foram:\n",n[0]," + ",n[1]," + ",n[2]," + ",n[3]," + ",n[4]," = ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */