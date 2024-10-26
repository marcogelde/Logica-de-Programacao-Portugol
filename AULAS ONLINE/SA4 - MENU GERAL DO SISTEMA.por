programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T
	
	const inteiro total = 10
	
	inteiro   quant, idade[total], ponteiro = 0, n, i
	caracter  opcao, resposta
	cadeia    nome[total], busca, enter, msg
	logico	encontrado = falso
	
	funcao inicio()
	{
		limpa()
		escreva("Quantos clientes gostaria de cadastrar? [MAX ", total, "]\n")
		leia(quant)

		se(quant > 0)
		{
			se(quant <= total)
			{
				menu()	//Redireciona o usuário para a função menu
			}
			senao
			{
				escreva("\n\n  ATENÇÃO: Quantidade superior ao tamanho do vetor!")
				Util.aguarde(3000)			//Aguarda 03 segundos
				inicio()
			}
			
		}
		senao
		{
			limpa()
			escreva("\n\n  ATENÇÃO: Quantidade inválida! Tente novamente!")
			Util.aguarde(3000)			//Aguarda 03 segundos
			inicio()
		}
	}

	funcao menu()
	{
			msg = "Menu Geral "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
			
			escreva(" 1 - Cadastrar novo cliente\n")
			escreva(" 2 - Listar clientes cadastrados\n")
			escreva(" 3 - Buscar cliente cadastrado\n")
			escreva(" 4 - Excluir cliente\n")
			escreva(" 5 - Sair do sistema\n\n")

			escreva(".================================================.\n")
			escreva("Opção: ")
			leia(opcao)

			escolha(opcao)  
			{
				caso '1': //Aspas simples como é caracter, se fosse numérico sem aspas
				{
					cadastro()	//Chama a função cadastro
					pare
				}

				caso '2':
				{
					listar()		//Chama a função listar
					pare
				}

				caso '3':
				{
					buscar()		//Chama a função buscar
					pare
				}

				caso '4':
				{
					excluir() //excluir		//Chama a função sair
					pare
				}
				
				caso '5':
				{
					sair()		//Chama a função sair
					pare
				}

				caso contrario:
				{
					//limpa()
					escreva("\nATENÇÃO: Opção inválida!")
					Util.aguarde(3000)			//Aguarda 03 segundos
					menu()
					pare
				}
			}
	}

	funcao cadastro()
	{	
			
		se(ponteiro < quant)
		{
			msg = "Cadastro   "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
			
			escreva("Informe o nome do(a) cliente:\n")
			leia(nome[ponteiro])
			nome[ponteiro] = Texto.caixa_alta(nome[ponteiro])		//Altera o nome para cx alta
	
			limpa()
			msg = "Cadastro   "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
			
			escreva("Informe quantos anos o(a) ", nome[ponteiro], " tem:\n")
			leia(idade[ponteiro])
	
			ponteiro++		//Incrementar a variável ponteiro
			//ponteiro = ponteiro + 1
			
			limpa()
			escreva("AVISO: Cadastro realizado com sucesso!")
			Util.aguarde(1000)
			menu() 			//Retorna para a função menu
		}
		senao
		{
			limpa()
			escreva("ATENÇÃO: Limite de cadastros atingido!")
			Util.aguarde(3000)			//Aguarda 03 segundos
			menu()
		}
	}

	funcao sair()
	{
		limpa()
		escreva("Finalizando o sistema em 05 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 04 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 03 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 02 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Finalizando o sistema em 01 segundos. . .")
		Util.aguarde(1000)

		limpa()
		escreva("Sistema finalizado com sucesso!\n\n\n\n\n")
	}

	funcao listar()
	{
		limpa()
		se(ponteiro == 0)
		{
			escreva("AVISO: Nenhum registro encontrado!")
			U.aguarde(3000)
			menu()
		}
		senao
		{
			msg = "Lista        "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo

			//Inicio do laço para exibir os registros dos clientes
			para(n = 0; n < ponteiro; n++)
			{
				escreva("Nome: ", nome[n], " - Idade: ", idade[n], "\n")
			}
			
			retornar()
		}
	}

	funcao buscar()
	
	{
		limpa()
		msg = "Busca      "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
		escreva("Informe o nome do(a) cliente a ser procurado:\n")
		leia(busca)
		busca = Texto.caixa_alta(busca)
		encontrado = falso

		para(n = 0; n < ponteiro; n++)
		{
			se(nome[n] == busca)
			{
				escreva(n+1, " - Nome: ", nome[n], " - Idade: ", idade[n], "\n")
				encontrado = verdadeiro
			}
		}
		se(encontrado == falso)
		{
			limpa()
			escreva("AVISO: Nenhum cliente foi encontrado com o nome ", busca, ".")
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

	funcao excluir()
	{
		limpa()
		msg = "Exclusão   "	//Personaliza o topo com uma mensagem
			topo()	//Chama a função topo
		escreva("Informe o nome do(a) cliente a ser excluido:\n")
		leia(busca)
		busca = Texto.caixa_alta(busca)
		encontrado = falso

		para(n = 0; n < ponteiro; n++)
		{
			se(nome[n] == busca)
			{
				para(i = n; i < ponteiro-1; i++)
				{
					nome[i] = nome[i+1]
					idade[i] = idade[i+1]
				}
				encontrado = verdadeiro
			}
		}
		limpa()
		escreva("Cliente: ",busca, " excluido\n")
		ponteiro--		//Decrementa
		se(encontrado == falso)
		{
			limpa()
			escreva("AVISO: Nenhum cliente foi encontrado com o nome ", busca, ".")
		}
		
		retornar()
	}
	
	funcao topo()
	{
		limpa()
		escreva(".================================================.\n")
		escreva("|        SISTEMA DE CADASTRO - ", msg, "       |\n")
		escreva(".================================================.\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4875; 
 * @DOBRAMENTO-CODIGO = [12, 41, 99, 135, 161, 185, 213, 255];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 8, 18, 5}-{nome, 10, 11, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */