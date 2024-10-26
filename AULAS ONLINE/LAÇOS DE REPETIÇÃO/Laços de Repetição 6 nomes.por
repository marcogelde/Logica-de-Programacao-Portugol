programa
{
	//se tirar um nome ele vai pedir pra colocar de novo
	cadeia 	nome[6] = {"Ana", "Marco", "Lucio", "Flavia", "Julio", "Raquel"}
	inteiro 	n
	
	funcao inicio()
	{
		//Inicio do laço de repetição
		para(n = 0; n < 6; n++)
		{
			escreva("Nº: ", n+1, " - ", nome[n], "\n")
		}
		escreva("\n\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */