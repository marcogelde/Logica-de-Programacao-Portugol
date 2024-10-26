programa
{
	inclua biblioteca Util --> U
	
	const inteiro total = 5
	
	inteiro   quant, idade[total], ponteiro = 0, n 
	caracter  opcao
	cadeia    nome[6]
	
	funcao inicio()
	{
		limpa()
		escreva("Quantos clientes gostaria de cadastrar? [MAX ", total, "]\n")
		leia(quant)

		se(quant > 0)
		{
			se(quant <= total)
			{
				menu()	//Redireciona o usuario para a função menu
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
			limpa()
			escreva(".================================================.\n")
			escreva("|              MENU GERAL DO SISTEMA             |\n")
			escreva(".================================================.\n\n")

			escreva(" 1 - Cadastrar novo usuário\n")
			escreva(" 2 - Listar clientes cadastrados\n")
			escreva(" 3 - Sair do sistema\n\n")

			escreva(".================================================.\n")
			escreva("Opção: ")
			leia(opcao)

			escolha(opcao)  
			{
				caso '1': //Aspas simples como é caracter, se fosse numerico sem aspas
				{
					cadastro()	//Chama a funcao cadastro
					pare
				}

				caso '2':
				{
					listar()		//Chama a função listar
					pare
				}
				
				caso '3':
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
			limpa()
			escreva("Informe o nome do(a) cliente:\n")
			leia(nome[ponteiro])
	
			limpa()
			escreva("Informe quantos anos o(a) ", nome[ponteiro], " tem:\n")
			leia(idade[ponteiro])
	
			ponteiro++		//Incrementar a variavel ponteiro
			//ponteiro = ponteiro + 1
			
			limpa()
			escreva("AVISO: Cadastro realizado com sucesso!")
			Util.aguarde(3000)
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
			escreva("Lista dos clientes cadastrados\n\n")
			escreva(".================================================.\n")

			//Inicio do lço para exibir os registros dos cliente
			para(n = 0; n < ponteiro; n++)
			{
				escreva("Nome: ", nome[n], " - Idade: ", idade[n], "\n\n")
			}

			
			escreva(".================================================.\n")
			Util.aguarde(4000)
			menu()
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @DOBRAMENTO-CODIGO = [39, 85, 114, 140];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */