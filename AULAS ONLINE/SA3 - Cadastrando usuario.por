programa
{
	inclua biblioteca Util --> U
	//Variaveis Globais
	inteiro   quant, idade = 0
	caracter  opcao
	cadeia    nome = ""
	
	funcao inicio()
	{
		limpa()
		escreva("Quantos clientes gostaria de cadastrar?\n")
		leia(quant)

		se(quant > 0)
		{
			menu()	//Redireciona o usuario para a função menu
		}
		senao
		{
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
		limpa()
		escreva("Informe o nome do(a) cliente:\n")
		leia(nome)

		limpa()
		escreva("Informe quantos anos o(a) ", nome, " tem:\n")
		leia(idade)

		limpa()
		escreva("AVISO: Cadastro realizado com sucesso!")
		Util.aguarde(3000)
		menu() 			//Retorna para a função menu
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
		se(nome == "" e idade == 0) //== dois igual pra poder comparar
		{
			escreva("AVISO: Nenhum registro encontrado!")
			U.aguarde(3000)
			menu()
		}
		senao
		
		escreva("Lista dos clientes cadastrados\n\n")
		escreva(".================================================.\n")

		escreva("Nome: ", nome, " - Idade: ", idade, "\n\n")

		escreva(".================================================.\n")
		Util.aguarde(4000)
		menu()
	}
}











/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1432; 
 * @DOBRAMENTO-CODIGO = [8, 43, 26, 88, 114];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 5, 18, 5}-{nome, 7, 11, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */