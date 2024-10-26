programa
{
	cadeia 	nome[20] 
	inteiro	idade[20]
	inteiro 	n = 0
	
	funcao inicio()
	{
		para(n = 0; n < 3; n++)
		{
			limpa()
			escreva("Informe o nome do seu ", n+1, "º cliente:\n")
			leia(nome[n])

			limpa()
			escreva("Informe a idade do(a) cliente ", nome[n], ":\n")
			leia(idade[n])
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
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */