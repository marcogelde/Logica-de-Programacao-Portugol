programa
{
	inclua biblioteca Util --> u
	
	cadeia 	livros[20], enter
	inteiro 	i=0
	caracter	opcao
	
	funcao inicio()
	{
		menu()
	}
	
	funcao menu()
	{
		limpa()
		escreva("============= PILHA DE LIVROS =============\n\nEscolha a opção desejada 1-6:\n")
		escreva("\n(1) EMPILHAR: Adicionar um livro na pilha")
		escreva("\n(2) DESEMPILHAR: Remover um livro da pilha")
		escreva("\n(3) LIMPAR: Remover todos os livros da pilha")
		escreva("\n(4) LISTAR: Listar todos os livros da pilha")
		escreva("\n(5) STATUS DA PILHA: Verificar se a pilha está vazia ou não")
		escreva("\n(6) FINALIZAR SISTEMA\n")
		escreva("========================================\n")
		escreva("Opção: ")
		leia(opcao)
		escolha (opcao)
		{
			caso '1':
			empilhar()
			pare
			caso '2':
			desempilhar()
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
	
	funcao empilhar()
	{
		se (i<20)
		{
		limpa()
		escreva(i+1, "º Livro: \n")
		leia(livros[i])
		i++
		menu()
		}
		senao{
			limpa()
			escreva("============= PILHA CHEIA =============")
			retornar()
		}
	}
	
	funcao desempilhar()
	{
		limpa()
		i--
		escreva("Último livro da pilha removido")
		retornar()
	}
	
	funcao limpar()
	{
		limpa()
		para (inteiro p=0; p<20; p++)
		{
			livros[p] = ("")
		}
		escreva("Pilha limpada com sucesso!!!")
		i=0
		retornar()
	}
	
	funcao listar()
	{
		limpa()
		se (i==0){
			escreva("Não há livros para listar")
			retornar()
		}
		senao{
			para (inteiro p=i-1; p>=0; p--)
			{
				escreva(p+1 , "º " , livros[p],"\n")
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
			escreva("PILHA ESTÁ VAZIA")
			retornar()
		}
		senao
		{
			escreva("PILHA NÃO ESTÁ VAZIA\nNO MOMENTO ELA TEM ESSA QUANTIDADE DE LIVROS: ",i)
			retornar()
		}
	}

	funcao retornar()
	{
		escreva("\n================================================\n")
		escreva("Pressione a tecla [ENTER] para retornar!")
		leia(enter)
		menu()
	}
	
	funcao fim()
	{
	limpa()
	escreva("Obrigado por empilhar livros\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @DOBRAMENTO-CODIGO = [26, 55, 72, 80, 109, 124, 132];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */