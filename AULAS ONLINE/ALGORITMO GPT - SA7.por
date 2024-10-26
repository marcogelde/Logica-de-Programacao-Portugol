programa
{
    const inteiro MAX_FILAS = 30
    const inteiro MAX_COLUNAS = 10

    tipo Passageiro
    {
        cadeia nome
        inteiro idade
    }

    matriz Passageiro reservas[MAX_FILAS][MAX_COLUNAS]
    inteiro totalFilas = 0
    inteiro totalColunas = 0

    funcao inteiro menu()
    {
        escreva("\nMenu de Opções:\n")
        escreva("1. Cadastrar / editar o total de poltronas da aeronave\n")
        escreva("2. Realizar reserva de poltrona\n")
        escreva("3. Visualizar poltronas disponíveis\n")
        escreva("4. Visualizar poltronas reservadas\n")
        escreva("5. Consultar passageiro pelo nome\n")
        escreva("6. Visualizar o total de poltronas reservadas e poltronas disponíveis\n")
        escreva("7. Sair do sistema\n")
        escreva("Escolha uma opção: ")
        inteiro opcao = leia()
        retorne opcao
    }

    funcao cadastrarPoltronas()
    {
        escreva("Informe o número de filas (máximo ", MAX_FILAS, "): ")
        inteiro novasFilas = leia()
        escreva("Informe o número de colunas (máximo ", MAX_COLUNAS, "): ")
        inteiro novasColunas = leia()
        
        se (novasFilas > totalFilas ou novasColunas > totalColunas)
        {
            totalFilas = novasFilas
            totalColunas = novasColunas
            escreva("Poltronas cadastradas/atualizadas com sucesso!\n")
        }
        senao
        {
            escreva("Aumente a capacidade das filas e colunas.\n")
        }
    }

    funcao realizarReserva()
    {
        escreva("Informe o número da fila: ")
        inteiro fila = leia()
        escreva("Informe o número da coluna: ")
        inteiro coluna = leia()
        
        se (fila < 1 ou fila > totalFilas ou coluna < 1 ou coluna > totalColunas)
        {
            escreva("Fila ou coluna inválida!\n")
            retorne
        }

        se (reservas[fila-1][coluna-1] != nulo)
        {
            escreva("Poltrona já está reservada! Por favor, escolha outra.\n")
            retorne
        }

        Passageiro passageiro
        escreva("Informe o nome do passageiro: ")
        passageiro.nome = leia()
        escreva("Informe a idade do passageiro: ")
        passageiro.idade = leia()

        reservas[fila-1][coluna-1] = passageiro
        escreva("Reserva realizada com sucesso!\n")
    }

    funcao visualizarPoltronasDisponiveis()
    {
        para (inteiro i = 0; i < totalFilas; i++)
        {
            para (inteiro j = 0; j < totalColunas; j++)
            {
                se (reservas[i][j] == nulo)
                {
                    escreva("Fila ", i+1, " Coluna ", j+1, " está disponível.\n")
                }
            }
        }
    }

    funcao visualizarPoltronasReservadas()
    {
        para (inteiro i = 0; i < totalFilas; i++)
        {
            para (inteiro j = 0; j < totalColunas; j++)
            {
                se (reservas[i][j] != nulo)
                {
                    escreva("Fila ", i+1, " Coluna ", j+1, " - Nome: ", reservas[i][j].nome, ", Idade: ", reservas[i][j].idade, "\n")
                }
            }
        }
    }

    funcao consultarPassageiro()
    {
        escreva("Informe o nome do passageiro: ")
        cadeia nome = leia()
        booleano encontrado = falso

        para (inteiro i = 0; i < totalFilas; i++)
        {
            para (inteiro j = 0; j < totalColunas; j++)
            {
                se (reservas[i][j] != nulo e reservas[i][j].nome == nome)
                {
                    escreva("Passageiro encontrado na Fila ", i+1, " Coluna ", j+1, "\n")
                    encontrado = verdadeiro
                }
            }
        }

        se (encontrado == falso)
        {
            escreva("Não há reservas realizadas para este passageiro!\n")
        }
    }

    funcao visualizarTotais()
    {
        inteiro totalReservadas = 0
        inteiro totalDisponiveis = 0
        inteiro criancas = 0
        inteiro adolescentes = 0
        inteiro adultos = 0
        inteiro idosos = 0

        para (inteiro i = 0; i < totalFilas; i++)
        {
            para (inteiro j = 0; j < totalColunas; j++)
            {
                se (reservas[i][j] != nulo)
                {
                    totalReservadas++
                    se (reservas[i][j].idade <= 12)
                        criancas++
                    senao se (reservas[i][j].idade <= 17)
                        adolescentes++
                    senao se (reservas[i][j].idade <= 59)
                        adultos++
                    senao
                        idosos++
                }
                senao
                {
                    totalDisponiveis++
                }
            }
        }

        escreva("Total de poltronas: ", totalFilas * totalColunas, "\n")
        escreva("Total de poltronas reservadas: ", totalReservadas, "\n")
        escreva("Total de poltronas disponíveis: ", totalDisponiveis, "\n")
        escreva("Percentual de poltronas reservadas: ", (totalReservadas * 100) / (totalFilas * totalColunas), "%\n")
        escreva("Percentual de poltronas disponíveis: ", (totalDisponiveis * 100) / (totalFilas * totalColunas), "%\n")
        escreva("Quantidade de crianças (0-12 anos): ", criancas, "\n")
        escreva("Quantidade de adolescentes (13-17 anos): ", adolescentes, "\n")
        escreva("Quantidade de adultos (18-59 anos): ", adultos, "\n")
        escreva("Quantidade de idosos (60+ anos): ", idosos, "\n")
    }

    funcao inicio()
    {
        enquanto (verdadeiro)
        {
            inteiro opcao = menu()

            escolha (opcao)
            {
                caso 1:
                    cadastrarPoltronas()
                    pare
                caso 2:
                    realizarReserva()
                    pare
                caso 3:
                    visualizarPoltronasDisponiveis()
                    pare
                caso 4:
                    visualizarPoltronasReservadas()
                    pare
                caso 5:
                    consultarPassageiro()
                    pare
                caso 6:
                    visualizarTotais()
                    pare
                caso 7:
                    escreva("Saindo do sistema...\n")
                    retorne
                padrao:
                    escreva("Opção inválida! Tente novamente.\n")
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */