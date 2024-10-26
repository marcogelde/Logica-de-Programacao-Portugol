programa
{
	
	funcao inicio()
	{
		const inteiro quant = 7
		inteiro elemento, vetor[quant] = {1, 2, 2, 3, 4, 2, 5}
		escreva("Qual elemento que você deseja contar no vetor? ")
		leia(elemento)
		escreva("O elemento ",elemento," aparece ", contarElementos(vetor, elemento, quant), " vezes.")
	}

	funcao inteiro contarElementos(inteiro vetor[], inteiro elemento, inteiro quant)
	{
		inteiro contador=0
		para(inteiro i=0; i<quant; i++)
		{
			se (vetor[i] == elemento)
			{
				contador++
			}
		}
		retorne contador
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */