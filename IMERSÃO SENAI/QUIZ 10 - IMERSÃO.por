programa
{
	inclua biblioteca Texto
	const inteiro quant=10
	
	inteiro	certas=0, erradas=0
	cadeia	pergunta[quant], a[quant], b[quant], c[quant], enter
	caracter	resposta[quant], opcao
	logico	cadastrado=falso
	
	funcao inicio()
	{
		menu()
	}

	funcao menu()
	{
		limpa()
		escreva("1 - Cadastrar pergunta")
		escreva("\n2 - Jogar Quiz")
		escreva("\n3 - Sair")
		escreva("\n\nOpção: ")
		leia(opcao)
		escolha(opcao)
		{
			caso '1':
			{
				cadastro()
				pare
			}

			caso '2':
			{
				jogar()
				pare
			}

			caso '3':
			{
				sair()
				pare
			}

			caso contrario:
			{
				menu()
				pare
			}
		}
	}

	funcao cadastro()
	{
		pergunta[0] = "Estrutura de dados que armazenam os elementos em formato sequencial, empilhando um \nitem acima do outro?"
		pergunta[1] = "Conjunto de dados divididos por linhas e colunas:"
		pergunta[2] = "São tipos que permitem o armazenamento de uma coleção de valores do mesmo tipo:"
		pergunta[3] = "São estruturas de dados bastante utilizados na computação onde o primeiro elemento \na ser inserido será também o primeiro a ser retirado:"
		pergunta[4] = "Qual dessas é uma pseudolinguagem?"
		pergunta[5] = "Para que se usa um vetor?"
		pergunta[6] = "Para que se usa a função Merge Sort?"
		pergunta[7] = "O que é um laço de repetição?"
		pergunta[8] = "O que é um escopo?"
		pergunta[9] = "O que é uma cadeia na declaração de variáveis?"
		
		a[0] = "Pilha"
		a[1] = "Vetor"
		a[2] = "Cadeia"
		a[3] = "Lógico"
		a[4] = "Java"
		a[5] = "Ordenar dados"
		a[6] = "Mostrar dados"
		a[7] = "São utilizados para executar repetidamente uma instrução"
		a[8] = "Visibilidade de variáveis em diferente partes de um código"
		a[9] = "É um conjunto de caracter contíguos na memória terminado"

		b[0] = "Fila"
		b[1] = "Matriz"
		b[2] = "Matriz"
		b[3] = "Fila"
		b[4] = "VisualG"
		b[5] = "Guardar dados"
		b[6] = "Sorteio de dados"
		b[7] = "São utilizados para somar um elemento"
		b[8] = "Visibilidade do código em partes"
		b[9] = "Uma estrutura que permite executar mais de uma vez o mesmo comando"

		c[0] = "Matriz"
		c[1] = "Variável"
		c[2] = "Inteiro"
		c[3] = "Desempilhar"
		c[4] = "Rust"
		c[5] = "Somar dados"
		c[6] = "Dividir dados"
		c[7] = "São utilizados para guardar dados"
		c[8] = "Visibilidade e acessibiildade de variáveis em diferentes partes de um código"
		c[9] = "Casa de detenção, presídio, prisão"
		
		resposta[0] = 'a'
		resposta[1] = 'b'
		resposta[2] = 'b'
		resposta[3] = 'b'
		resposta[4] = 'b'
		resposta[5] = 'b'
		resposta[6] = 'c'
		resposta[7] = 'a'
		resposta[8] = 'a'
		resposta[9] = 'a'

		limpa()
		cadastrado=verdadeiro
		escreva("Perguntas cadastradas\n\nPressione ENTER para retornar")
		leia(enter)
		menu()
		
	}
	
	funcao jogar()
	{	
		limpa()
		escreva("Pressione ENTER para verificar se as perguntas foram cadastradas")
		leia(enter)
		se(cadastrado==verdadeiro)
		{
			para (inteiro i=0; i<quant; i++)
			{
				limpa()
				escreva(i+1,")",pergunta[i])
				escreva("\nA)",a[i])
				escreva("\nB)",b[i])
				escreva("\nC)",c[i])
				escreva("\nResponda somente com a letra certa em minúsculo: ")
				leia(opcao)
				
				se (opcao==resposta[i])
				{
					certas++
				}
			}
		}
		senao se(cadastrado==falso)
		{
			limpa()
			escreva("O quiz deve possuir um total de 10 questões\nRetorne ao menu e vá para a função de cadastrar as perguntas")
			escreva("\n\nPressione ENTER para retornar")
			leia(enter)
			menu()
		}
			limpa()
			escreva("Quiz terminado, você acertou um total de ",certas," perguntas.")
			escreva("\n\nPressione ENTER para retornar")
			leia(enter)
			menu()
	}

	funcao sair()
	{
		limpa()
		escreva("Obrigado por essa bela jogada.\n\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3580; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */