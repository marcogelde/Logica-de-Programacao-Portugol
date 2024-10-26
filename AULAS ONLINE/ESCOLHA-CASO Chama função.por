programa
{
	inclua biblioteca Util
	caracter opcao //Aspas simples quando chamar a variavel
	
	funcao inicio()
	{	
		limpa()
		escreva("Digite uma opção: \n")
		leia(opcao)
		limpa()

		escolha(opcao)
		{
			caso '1':
			{
				//Algoritmo para o caso 1
				escreva("Opção escolhida foi a 1")
				pare
			}

			caso '2':
			{
				escreva("Opção escolhida foi a 2")
				pare
			}
			caso contrario:
			{
				limpa()
				escreva("Opção inválida!!!")
				Util.aguarde(2000)
				inicio()
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */