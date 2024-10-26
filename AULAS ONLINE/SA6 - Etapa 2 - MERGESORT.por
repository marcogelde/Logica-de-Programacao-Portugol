programa
{
	const inteiro tamanho = 24
	
	funcao inicio()
	{
		inteiro vetor[tamanho] = {5,24,1,19,20,7,14,21,6,8,15,22,2,9,16,13,23,10,17,3,4,11,18,12}
		
		escreva("Vetor original: ")
		imprimir(vetor)
		escreva("\n")

		//Chamando a função MergeSort - Inicio na posição 0 e terminar na 5
		merge_sort(vetor, 0, tamanho-1)

		escreva("\n\nVetor ordenado: ")
		imprimir(vetor)
		escreva("\n\n")
	}

	funcao merge_sort(inteiro vetor[], inteiro ini, inteiro fim)
	{
		inteiro meio=0, i, j, k, aux[tamanho]

		//Verificar se o tamanho do vetor é maior que 1 casa
		se(ini<fim)
		{
			meio = (ini + fim)/2
			merge_sort(vetor, ini, meio)
			merge_sort(vetor, meio+1, fim)
		}

		//Fazer com que o MergeSort ordene os elementos
		i = ini
		j = meio + 1
		k = ini

		enquanto(i <= meio e j <= fim)
		{
			se(vetor[i] < vetor[j])
			{
				aux[k] = vetor[i]
				i++
				k++		
			}
			senao
			{
				aux[k] = vetor[j]
				j++
				k++
			}
		}

		//Verificar se o índice não chegou ao meio do vetor
		enquanto(i<= meio)
		{
			aux[k] = vetor[i]
			i++
			k++
		}

		//Verifica se o índice não chegou ao fim do vetor
		enquanto(j <= fim)
		{
			aux[k] = vetor[j]
			j++
		}

		//Laço de repetição para ponteiro	- 
		//Recebe o valor de início e compara se é menor ou igual ao final do vetor
		para(i = ini; i <= fim; i++)
		{
			vetor[i] = aux[i]
		}

		//escreva("\nPosição do vetor: ", ini, " até ",fim, ": ")
		//imprimir(vetor)
		
	}

	funcao imprimir(inteiro idade[])
	{
		inteiro i

		para(i=0; i<tamanho; i++)
		{
			escreva(idade[i], " ")
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 707; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */