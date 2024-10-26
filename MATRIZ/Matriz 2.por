programa
{
	
	funcao inicio()
	{	//NA MATRIZ SE TIVER DECLARADO TODOS OS VALORES 
		//NÃO PRECISA ESPECIFICAR QUANTAS LINHAS E COLUNAS HÁ
		inteiro vet[4] = {1,2,3,4}
		inteiro notas[4][4] = {{2,5,6,9},{2,5,6,9},{2,5,6,9},{2,5,6,9}}

		inteiro matriza[2][2]
		
		para(inteiro l=0; l<4; l++)
		{
			para(inteiro c=0;c<4;c++)
			{
				escreva(notas[l][c],",")
			}
			escreva("\n")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */