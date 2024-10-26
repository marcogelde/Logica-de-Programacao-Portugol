programa
{
	inclua biblioteca Util --> u
	
	cadeia 	livros[20], enter, invertx[20]
	inteiro 	ponteiro=0
	caracter	opcao
	
	funcao inicio()
	{
		menu()
	}
	
	funcao menu()
	{
		limpa()
		escreva("============================== PILHA DE LIVROS ==============================\n\nEscolha a opção desejada 1-5:\n")
		escreva("\n(1) Push (EMPURRAR): Adicionar um livro na pilha")
		escreva("\n(2) Pop (REMOVER): Remover um livro da pilha")
		escreva("\n(3) Peek (VER O TOPO): Visualizar o livro no topo da pilha")
		escreva("\n(4) isEmpty (STATUS DA PILHA): Verificar se a pilha está vazia ou não")
		escreva("\n(5) size (TAMANHO): Verificar o número de elementos na pilha")
		escreva("\n(6) inverte: Inverte os livros da pilha (o primeiro passa a ser o último)")
		escreva("\n(7) embaralha: Embaralhar os livros da pilha")
		escreva("\n(8) FINALIZAR SISTEMA\n\n")
		escreva("=============================================================================\n")
		escreva("OPÇÃO >>> ")
		leia(opcao)
		escolha (opcao)
		{
			caso '1':
			push()
			pare
			caso '2':
			pop()
			pare
			caso '3':
			peek()
			pare
			caso '4':
			isEmpty()
			pare
			caso '5':
			size()
			pare
			caso '6':
			inverte()
			pare
			caso '7':
			embaralha()
			pare
			caso '8':
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
	
	funcao push() //Adicionar um elemento na pilha
	{
		se (ponteiro<20){
		limpa()
		escreva(ponteiro+1, "º Livro: \n")
		leia(livros[ponteiro])
		ponteiro++
		menu()

		}senao{
			limpa()
			escreva("============= PILHA CHEIA =============")
			retornar()
		}
	}
	
	funcao pop()
	{
		limpa()
		ponteiro--
		escreva("Último livro da pilha removido")
		retornar()
	}
	
	funcao peek() //Visualizar o elemento no topo
	{
		limpa()
		escreva("O último livro da pilha é ",livros[ponteiro-1])
		retornar()
	}

	funcao isEmpty()
	{
		limpa()
		se (ponteiro==0)
		{
			escreva("PILHA ESTÁ VAZIA")
			retornar()
		}
		senao
		{
			escreva("PILHA NÃO ESTÁ VAZIA\nNO MOMENTO ELA TEM ESSA QUANTIDADE DE LIVROS: ",ponteiro)
			retornar()
		}
	}
	
	funcao size()
	{
		limpa()
		se (ponteiro==0){
			escreva("Não há livros nessa pilha")
			retornar()
		}
		senao{
			escreva("Há na tua pilha essa quantidade de livros: ",ponteiro,"\n")
			
		}
	}

	funcao inverte()
	{	
		limpa()
		para (inteiro p=ponteiro; p>=0; p--){
			escreva(livros[p],"\n")
		}
		retornar()
		
		/*limpa()
		inteiro inv = 0
		para (inteiro p=ponteiro-1; p>=0; p--)
		{
			invertx[inv] = livros[p]
			inv++ 
		}
		para (inteiro p=0; p<inv; p++)
		{
			livros[p] = invertx[p]
			escreva(p+1, "º: ", livros[p],"\n")
		}
		ponteiro=inv
		retornar()*/
	}

	funcao embaralha()
	{
		limpa()
		inteiro inv = 0
		para (inteiro p=ponteiro-1; p>=0; p--)
		{
			invertx[u.sorteia(0, p)] = livros[p]
			inv++ 
		}
		para (inteiro p=0; p<inv; p++)
		{
			livros[p] = invertx[p]
			escreva(p+1, "º: ", livros[p],"\n")
		}
		ponteiro=inv
		retornar()
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
 * @POSICAO-CURSOR = 2448; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {livros, 5, 9, 6}-{invertx, 5, 28, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */