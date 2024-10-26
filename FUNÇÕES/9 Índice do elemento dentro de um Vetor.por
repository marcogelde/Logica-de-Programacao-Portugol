programa
{
	const inteiro quant = 5
	
	funcao inicio()
	{
    	inteiro vetor[quant] = {1, 2, 3, 4, 5}
    	escreva("O índice do elemento 3 é: ", encontrar_indice(vetor, 3),"\n") // Saída esperada: O índice do elemento 3 é: 2
    	escreva("O índice do elemento 6 é: ", encontrar_indice(vetor, 6),"\n") // Saída esperada: O índice do elemento 6 é: -1
	}

	funcao inteiro encontrar_indice(inteiro vetor[], inteiro elemento)
	{
    	para (inteiro i = 0; i < quant; i++)
    	{
   		se (vetor[i] == elemento)
        	{
          	retorne i
        	}
    	}
    	retorne -1
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */