//Algoritmo desenvolvido pelo estudante: MARCO ANTONIO GELDE
programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> t
	
	const inteiro filas=30, colunas=10

	inteiro	quantfilas=filas, quantcolunas=colunas, fila, coluna, idade[filas][colunas], auxquantf=0, auxquantc=0
	cadeia	enter, passageiro[filas][colunas], busca
	caracter	opcao
	logico 	encontrado=falso, cadastro=falso
	
	funcao inicio()
	{
		menu()
	}

	funcao menu()
	{
		limpa()
		escreva("============================== ✈ SWEET FLIGHT ==============================\n\n")
		escreva("1 - CADASTRAR / EDITAR O TOTAL DE POLTRONAS DA AERONAVE\n")
		escreva("2 - REALIZAR RESERVA DA POLTRONA\n")
		escreva("3 - VISUALIZAR POLTRONAS DISPONÍVEIS\n")
		escreva("4 - VISUALIZAR POLTRONAS RESERVADAS\n")
		escreva("5 - CONSULTAR PASSAGEIRO PELO NOME\n")
		escreva("6 - VISUALIZAR O TOTAL DE POLTRONAS RESERVADAS E POLTRONAS DISPONÍVEIS\n")
		escreva("7 - SAIR DO SISTEMA\n\n")
		escreva("Opção: ")
		leia(opcao)
		escolha(opcao)
		{
			caso '1':
			{
				cadastrar()
				pare
			}

			caso '2':
			{
				reserva()
				pare
			}

			caso '3':
			{
				poltronasDisponiveis()
				pare
			}

			caso '4':
			{
				poltronasReservadas()
				pare
			}

			caso '5':
			{
				consultar()
				pare
			}

			caso '6':
			{
				estatisticas()
				pare
			}

			caso '7':
			{
				sair()
				pare
			}

			caso contrario:
			{
				limpa()
				escreva("OPÇÃO INVÁLIDA")
				retornar()
				pare
			}
		}
	}

	funcao cadastrar()
	{
	/*
	 o atendente deve informar o quantitativo de “filas” e”colunas” (poltronas da aeronave disponíveis). 
	 A totalidade das filas e colunas, não deverá ser superior ao tamanho máximo de nossa matriz. 
	 Nesta opção, caso a aeronave já tenha sido configurada com uma quantidade de poltronas, 
	 o usuário poderá somente realizar a edição, não sendo permitido que haja diminuição na 
	 capacidade de filas e colunas, mas somente aumento de lugares. Solicitamos que caso já 
	 existam reservas feitas, não sejam perdidos nenhuma informação dos passageiros no momento 
	 da edição da capacidade da aeronave.
	 */
		cadastrarFila()
		cadastrarColuna()
	}

	funcao cadastrarFila()
	{
		limpa()
		escreva("Qual a quantidade de FILAS diponíveis nessa aeronave? ")
		leia(quantfilas)
		se(quantfilas>filas ou quantfilas<1 ou quantfilas<auxquantf)
		{
			limpa()
			escreva("================================ AVISO ================================")
			escreva("\nQuantidade indisponível, escolha uma quantidade de no máximo 30 filas\nQue não seja menor ou igual a zero e nem menor que a quantidade de filas previamente cadastrada.")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			cadastrarFila()
		}senao
			cadastrarColuna()
	}

	funcao cadastrarColuna()
	{
		escreva("Qual a quantidade de COLUNAS diponíveis nessa aeronave? ")
		leia(quantcolunas)
		se(quantcolunas>colunas ou quantcolunas<1 ou quantcolunas<auxquantc)
		{
			limpa()
			escreva("================================ AVISO ================================")
			escreva("\nQuantidade indisponível, escolha uma quantidade de no máximo 10 colunas\nQue não seja menor ou igual a zero e nem menor que a quantidade de colunas previamente cadastrada.")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			cadastrarColuna()
		}senao{
			escreva("\nFilas e colunas cadastradas com sucesso.")
			auxquantf=quantfilas
			auxquantc=quantcolunas
			cadastro=verdadeiro
			retornar()
		}
	}

	funcao reserva()
	{
	 /* o atendente deve informar o número da fila e o número da coluna, caso a mesma esteja disponível, 
	 permitir que se possa cadastrar o nome do passageiro e sua idade. Caso a poltrona não esteja 
	 disponível, deverá apresentar a mensagem “Poltrona já está reservada! Por favor, escolha outra.”.*/
	 
		limpa()
		escreva("================== RESERVA DE POLTRONAS ==================")
		escreva("\nEscolha a poltrona desejada, são um total de ",quantfilas," filas e ",quantcolunas," colunas.\nQual fila deseja? ")
		leia(fila)
		se(fila>quantfilas ou fila<1)
		{
			escreva("Fila insdisponível")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			reserva()
		}
		fila=fila-1
		escreva("E qual coluna? ")
		leia(coluna)
		se(coluna>quantcolunas ou coluna<1)
		{
			escreva("Coluna insdisponível")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			reserva()
		}
		coluna=coluna-1
		se(passageiro[fila][coluna] == "")
		{
			escreva("Qual o nome do passageiro? ")
			leia(passageiro[fila][coluna])
			passageiro[fila][coluna] = Texto.caixa_alta(passageiro[fila][coluna])
			escreva("Qual a idade? ")
			leia(idade[fila][coluna])
			escreva("\nPoltrona reservada com sucesso.")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			menu()
		}senao{
			limpa()
			escreva("Poltrona já está reservada! Por favor, escolha outra.")
			escreva("\n\nPressione ENTER para retornar\n")
			leia(enter)
			reserva()
		}
	}

	funcao poltronasDisponiveis()
	{
		/*O sistema deverá apresentar uma listagem com todas as poltronas disponíveis para reserva. 
		Nesta tela, o desenvolvedor poderá escolher a melhor forma de exibição das informações.*/
		
		limpa()
		escreva("============================ POLTRONAS DISPONÍVEIS ============================\n")
		para (inteiro x=0; x<quantfilas; x++)
		{
			para (inteiro y=0; y<quantcolunas; y++)
			{
				se (passageiro[x][y] == "")
				{
					escreva("F",x+1,".C",y+1,"\t")
				}
			}
			escreva("\n")
		}
		retornar()
	}

	funcao poltronasReservadas()
	{
		/*o sistema deverá apresentar uma listagem com todos os reservas, 
		 exibindo número da fila, número da coluna, nome e idade do passageiro 
		 respectivamente de uma das reservas feitas.*/
		 
		limpa()
		logico reservado=falso
		escreva("================== POLTRONAS RESERVADAS ==================\n")
		para (inteiro x=0; x<quantfilas; x++)
		{
			para (inteiro y=0; y<quantcolunas; y++)
			{
				se (passageiro[x][y] != "")
				{
					escreva("F",x+1,".C",y+1,": ",passageiro[x][y]," - ",idade[x][y]," anos\n")
					reservado=verdadeiro
				}
			}
		}
		se(reservado==falso)
		{
			escreva("Ainda não há nenhuma reserva nesse voo")
		}
		retornar()
	}

	funcao consultar()
	{
		/*o atendente deve informar o nome do passageiro para que o algoritmo busque e exiba o 
		 local da fila e coluna que o passageiro reservou. Caso o nome não seja localizado, 
		 deverá apresentar a mensagem “Não há reservas realizadas para este passageiro!”.*/

		limpa()
		escreva("Informe o nome do(a) passageiro(a) a ser procurado:\n")
		leia(busca)
		se(busca=="")
		{
			limpa()
			escreva("AVISO: Digite um nome válido.")
			retornar()
		}
		busca = Texto.caixa_alta(busca)
		encontrado = falso

		para (inteiro x=0; x<quantfilas; x++)
		{
			para (inteiro y=0; y<quantcolunas; y++)
			{
				se(passageiro[x][y] == busca)
				{
					limpa()
					escreva("================== PASSAGEIRO ENCONTRADO ==================\n")
					escreva("F",x+1,".C",y+1,": ", passageiro[x][y], " - Idade: ", idade[x][y], "\n")
					encontrado = verdadeiro
				}
			}
		}
		
		se(encontrado == falso)
		{
			limpa()
			escreva("AVISO: Nenhum passageiro foi encontrado com o nome ", busca, ".")
		}
		
		retornar()
	}

	funcao estatisticas()
	{
		/*o sistema deverá exibir o quantitativo total de poltronas da aeronave, 
		 o quantitativo disponível para reservas, o quantitativo de reservas feitas e o 
		 percentual de cada uma delas. Exibir logo abaixo, de forma separada as informações 
		 sobre os passageiros, tais como: quantitativo de crianças (0 ~ 12 anos), 
		 adolescentes (13 ~ 17 anos), adultos (18 ~ 59 anos) e idoso (a partir de 60 anos).*/

		limpa()
		inteiro contagem = 0, disponivel=0, reservas=0, crianca=0, adolescente=0, adulto=0, idoso=0
		para (inteiro x=0; x<quantfilas; x++)
		{
			para (inteiro y=0; y<quantcolunas; y++)
			{
				contagem++
				
				se (passageiro[x][y] == "")
				{
					disponivel++
				}
				senao reservas++
				
				se (idade[x][y] >0 e idade[x][y] <= 12)
				{
					crianca++
				}
				senao se(idade[x][y] >= 13 e idade[x][y] <=17)
				{
					adolescente++
				}
				senao se(idade[x][y] >= 18 e idade[x][y] <=59)
				{
					adulto++
				}
				senao se (idade[x][y] >=60)
				{
					idoso++
				}
			}
		}
		escreva("============================== RELATÓRIO SWEET FLIGHT ==============================\n")
		escreva("Total de poltronas: ",contagem)
		escreva("\nDisponíveis para reserva: ",disponivel, " = ",m.arredondar((disponivel*100)/contagem,2),"%")
		escreva("\nPoltronas já reservadas: ",reservas," = ",m.arredondar((reservas*100)/contagem,2),"%\n\n")

		se(reservas!=0)
		{
			escreva("Quantidade de Passageiros separados por Idade:")
			escreva("\nCrianças: ",crianca," = ", m.arredondar((crianca*100)/reservas,2),"%")
			escreva("\nAdolescentes: ",adolescente," = ",m.arredondar((adolescente*100)/reservas,2),"%")
			escreva("\nAdultos: ",adulto," = ",m.arredondar((adulto*100)/reservas,2),"%")
			escreva("\nIdosos: ",idoso," = ",m.arredondar((idoso*100)/reservas,2),"%")
		}
		
		retornar()
	}

	funcao sair()
	{
		/*o atendente deverá encerrar o algoritmo.*/
		
		limpa()
		escreva("====== Sistema da SWEET FLIGHT finalizado com sucesso ======")
		
	}

	funcao retornar()
	{
		escreva("\n\nPressione ENTER para retornar ao menu\n")
		leia(enter)
		menu()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */