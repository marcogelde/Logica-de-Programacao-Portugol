programa
{
	cadeia	busca, cidade[6] = {"Joinville", "Chapecó", "São José", "Blumenau", "Jaragua do Sul", "Mafra"}
	inteiro	n, ponteiro = 6

	
	funcao inicio()
	{
		para(n = 0; n < ponteiro-1; n++)
		{
			cidade[n] = cidade[n+1]
		}
		
		ponteiro--		//Decrementa

		limpa()
		
		para(n = 0; n< ponteiro; n++)
		{
			escreva(cidade[n], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {busca, 3, 9, 5}-{cidade, 3, 16, 6}-{n, 4, 9, 1}-{ponteiro, 4, 12, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */