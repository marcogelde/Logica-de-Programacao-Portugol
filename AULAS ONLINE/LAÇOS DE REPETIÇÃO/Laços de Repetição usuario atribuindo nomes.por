programa
{
	//se tirar um nome ele vai pedir pra colocar de novo
	cadeia 	nome[3] 
	inteiro 	n
	
	funcao inicio()
	{
		para(n = 0; n < 3; n++)
		{
			limpa()
			escreva("Informe o nome do seu ", n+1, "º cliente:\n")
			leia(nome[n])
		}


		//Inicio do laço de repetição para exibição
		para(n = 0; n < 3; n++)
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
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 4, 9, 4}-{n, 5, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */