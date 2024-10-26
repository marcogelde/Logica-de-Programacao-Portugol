programa
{
	inclua biblioteca Util --> u
	
	cadeia 	pessoas[25], enter
	inteiro 	i=0
	caracter	opcao
	
	funcao inicio()
	{
		menu()
	}
	
	funcao menu()
	{
		limpa()
		escreva("====================== FILA DE ATENDIMENTO ======================\n\nEscolha a opção desejada 1-6:\n")
		escreva("\n(1) ADICIONAR: Adicionar uma pessoa na fila")
		escreva("\n(2) REMOVER: Realizar o atendimento da primeira pessoa da fila")
		escreva("\n(3) LIMPAR: Remover todas as pessoas da fila")
		escreva("\n(4) LISTAR: Listar todas as pessoas da fila")
		escreva("\n(5) STATUS DA FILA: Verificar se a fila está vazia ou não")
		escreva("\n(6) FINALIZAR SISTEMA\n")
		escreva("\n=================================================================\n")
		escreva("Opção: ")
		leia(opcao)
		escolha (opcao)
		{
			caso '1':
			adicionar()
			pare
			caso '2':
			remover()
			pare
			caso '3':
			limpar()
			pare
			caso '4':
			listar()
			pare
			caso '5':
			vazia()
			pare
			caso '6':
			fim()
			pare
			caso contrario:
			limpa()
			escreva("============= OPÇÃO INVÁLIDA =============")
			u.aguarde(2000)
			menu()
			pare
		}
	}
	
	funcao adicionar()
	{
		se (i<25)
		{
		limpa()
		escreva(i+1, "º pessoa: \n")
		leia(pessoas[i])
		i++
		menu()
		}
		senao{
			limpa()
			escreva("============= FILA CHEIA =============")
			retornar()
		}
	}
	
	funcao remover()
	{
		limpa()
		se (i==0){
			escreva("Não há pessoas para atender")
			retornar()
		}senao{
			escreva(pessoas[0]," saiu para atendimento.")
			para (inteiro p=0; p<i-1; p++)
			{
				pessoas[p] = pessoas[p+1]
			}
		i--
		retornar()
		}
	}
	
	funcao limpar()
	{
		se (i==0){
			limpa()
			escreva("Não há ninguém na fila para limpar.")
			retornar()
		}senao{
			limpa()
			para (inteiro p=0; p<25; p++)
			{
				pessoas[p] = ("")
			}
			escreva("Fila limpada com sucesso!!!")
			i=0
		}
		retornar()
	}

	funcao retornar()
	{
		escreva("\n================================================\n")
		escreva("Pressione a tecla [ENTER] para retornar!")
		leia(enter)
		menu()
	}
	
	funcao listar()
	{
		limpa()
		se (i==0){
			escreva("Não há pessoas para listar")
			retornar()
		}
		senao{
			para (inteiro p=0; p<i; p++)
			{
				escreva(p+1, "º " , pessoas[p],"\n")
			}
			retornar()
			menu()
		}
	}
	
	funcao vazia()
	{
		limpa()
		se (i==0)
		{
			escreva("VERDADEIRO - A FILA ESTÁ VAZIA")
			retornar()
		}
		senao
		{
			escreva("FALSO - A FILA NÃO ESTÁ VAZIA\nNO MOMENTO ELA TEM ESSA QUANTIDADE DE PESSOAS: ",i)
			retornar()
		}
	}

	funcao fim()
	{
	limpa()
	escreva("Obrigado por enfileirar pessoas.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2568; 
 * @DOBRAMENTO-CODIGO = [55, 72, 89, 107, 115, 132, 147];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */