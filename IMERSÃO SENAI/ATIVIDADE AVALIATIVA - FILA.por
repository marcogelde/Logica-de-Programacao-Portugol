programa
{
	const inteiro quant = 25
	inteiro 	ponteiro = 0, x = 0
	cadeia	data[quant], 	nome[quant], 	equip[quant], 	problema[quant], 
			datax[quant], 	nomex[quant], 	equipx[quant], problemax[quant], 
			enter, busca
	real		valor[quant],	total = 0.0
	caracter	opcao
	logico	encontrado = falso
	
	funcao inicio()
	{
		limpa()
		escreva("======================= GEEKS TECH =======================\n\n")
		escreva(" 1 - Cadastrar novo equipamento\n")
		escreva(" 2 - Executar manutenção no próximo equipamento\n")
		escreva(" 3 - Apresentar a fila dos equipamentos para atendimento\n")
		escreva(" 4 - Consultar o próximo equipamento a ser atendido\n")
		escreva(" 5 - Buscar equipamento\n")
		escreva(" 6 - Exibir status da fila\n")
		escreva(" 7 - Apresentar os equipamentos consertados\n")
		escreva(" 8 - Buscar equipamentos consertados\n")
		escreva(" 9 - Sair do sistema\n\n")

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
				executarManutencao()
				pare
			}
			caso '3':
			{
				apresentarFila()
				pare
			}
			caso '4':
			{
				consultarProximo()
				pare
			}
			caso '5':
			{
				buscarEquipamento()
				pare
			}
			caso '6':
			{
				status()
				pare
			}
			caso '7':
			{
				apresentarConsertados()
				pare
			}
			caso '8':
			{
				buscarConsertados()
				pare
			}
			caso '9':
			{
				sair()
				pare
			}
			caso contrario:
			{
				pare
			}
		}
	}

	funcao cadastrar()
	{
		limpa()
		se(ponteiro == quant)
		{
			
			escreva("Impossível cadastrar novos equipamentos")
			escreva("\n\n---------------------------------------------\n")
			escreva("Pressiona a tecla [ENTER] para retornar")
			leia(enter)
			inicio()
		}senao
		escreva("======================= CADASTRO =======================\n\n")
		escreva("Data de entrada: ")
		leia(data[ponteiro])
		
		escreva("Nome do proprietário: ")
		leia(nome[ponteiro])
		
		escreva("Equipamento: ")
		leia(equip[ponteiro])
		
		escreva("Problema relatado: ")
		leia(problema[ponteiro])
		
		ponteiro++
		
		escreva("\nCadastro realizado com sucesso\nPressiona a tecla [ENTER] para retornar")
		leia(enter)
		inicio()
	}

	funcao executarManutencao()
	{
		limpa()
		se (ponteiro==0){
			escreva("Não há equipamentos para consertar")
			retornar()
		}senao{
			escreva(equip[0]," do(a) ",nome[0]," saiu para conserto.")
			datax[x] = data[0]
			nomex[x] = nome[0]
			equipx[x] = equip[0]
			problemax[x] = problema[0]
			escreva("\nQual o valor desse conserto: R$")
			leia(valor[x])
			total = total+valor[x]
			x++
			para (inteiro i=0; i<ponteiro-1; i++)
			{
				data[i] = data[i+1]
				nome[i] = nome[i+1]
				equip[i] = equip[i+1]
				problema[i] = problema[i+1]
			}
		ponteiro--
		retornar()
		}
	}

	funcao apresentarFila()
	{
		limpa()
		se (ponteiro==0){
			escreva("AVISO: Não há equipamentos para listar")
			retornar()
		}
		senao
			escreva("==================== LISTA DE EQUIPAMENTOS PARA ATENDIMENTO ====================\n\n")
			para (inteiro i=0; i<ponteiro; i++)
			{
				escreva(i+1, "º " , equip[i],"\n")
			}
			retornar()
	}

	funcao consultarProximo()
	{
		limpa()
		se (ponteiro==0){
			escreva("AVISO: Não há próximo equipamento para atendimento")
			retornar()
		}
		senao
			escreva("==================== PRÓXIMO EQUIPAMENTO PARA ATENDIMENTO ====================\n\n")
			escreva("Data de inclusão: ",data[0],"\n")
			escreva("Nome do proprietário: ",nome[0],"\n")
			escreva("Equipamento: ",equip[0],"\n")
			escreva("Problema: ",problema[0],"\n")
			retornar()
	}

	funcao buscarEquipamento()
	{
		limpa()
		escreva("Informe o nome do equipamento a ser procurado:\n")
		leia(busca)
		encontrado = falso

		para(inteiro i = 0; i < ponteiro; i++)
		{
			se(equip[i] == busca)
			{
				limpa()
				escreva("======================= EQUIPAMENTO ENCONTRADO =======================\n\n")
				escreva("Equipamento: ",equip[i],"\nData de entrada: ",data[i],"\nNome do proprietário: ",nome[i],"\nProblema: ",problema[i])
				escreva("\nPosição na fila: ",i+1,"º")
				encontrado = verdadeiro
			}
		}
		se(encontrado == falso)
		{
			limpa()
			escreva("AVISO: Nenhum equipamento foi encontrado com o nome ", busca, ".")
		}
		
		retornar()
	}

	funcao status()
	{
		limpa()
		escreva("======================= STATUS =======================\n\n")
		escreva("Quantidade de equipamentos aguardando manutenção: ",ponteiro)
		escreva("\nQuantidade de equipamentos que já foram atendidos: ",x)
		retornar()
	}

	funcao apresentarConsertados()
	{
		limpa()
		se (x==0){
			escreva("AVISO: Não há equipamentos consertados")
			retornar()
		}
		senao
			escreva("==================== LISTA DE EQUIPAMENTOS CONSERTADOS ====================\n\n")
			para (inteiro i=0; i<x; i++)
			{
				escreva(i+1, "º " , equipx[i],"\n")
			}
			escreva("\nSoma total das manutenções: R$",total)
			retornar()
	}

	funcao buscarConsertados()
	{
		limpa()
		escreva("Informe o nome do equipamento a ser procurado:\n")
		leia(busca)
		encontrado = falso

		para(inteiro i = 0; i < x; i++)
		{
			se(equipx[i] == busca)
			{
				limpa()
				escreva("======================= EQUIPAMENTO ENCONTRADO =======================\n\n")
				escreva("Equipamento: ",equipx[i],"\nData de entrada: ",datax[i],"\nNome do proprietário: ",nomex[i],"\nProblema: ",problemax[i])
				escreva("\nValor cobrado: R$",valor[i])
				encontrado = verdadeiro
			}
		}
		se(encontrado == falso)
		{
			limpa()
			escreva("AVISO: Nenhum equipamento consertado foi encontrado com o nome ", busca, ".")
		}
		
		retornar()
	}

	funcao sair()
	{
		limpa()
		escreva("Acabou")
	}

	funcao retornar()
	{
		escreva("\n\nPressiona a tecla [ENTER] para retornar")
		leia(enter)
		inicio()
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 68; 
 * @DOBRAMENTO-CODIGO = [11, 82, 114, 142, 158, 174, 201, 210, 254, 260];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */