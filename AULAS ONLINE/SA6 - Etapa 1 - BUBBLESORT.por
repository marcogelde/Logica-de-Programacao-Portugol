programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	const inteiro quant = 20

	inteiro	idade[quant], ponteiro = 0, x = 0, y = 0, temp_idade = 0, contador=0
	cadeia	nome[quant], enter, temp_nome
	caracter	opcao
	
	funcao inicio()
	{
		limpa()
		escreva(" 1 - Cadastrar manualmente\n")
		escreva(" 2 - Cadastrar automaticamente\n")
		escreva(" 3 - Exibir os valores\n")
		escreva(" 4 - Ordenar valores (crescente)\n")
		escreva(" 5 - Ordenar valores (decrescente)\n")
		escreva(" 6 - Sair do sistema\n\n")

		escreva("Opção: ")
		leia(opcao)

		escolha(opcao)
		{
			caso '1':
			{
				cadastrar_manualmente()
				pare
			}
			caso '2':
			{
				cadastrar_automaticamente()
				pare
			}
			caso '3':
			{
				exibir()
				pare
			}
			caso '4':
			{
				ordenarCrescente()
				pare
			}
			caso '5':
			{
				ordenarDecrescente()
				pare
			}
			caso '6':
			{
				limpa()
				escreva("Tchau!")
				pare
			}
			caso contrario:
			{
				pare
			}
		}
	}

	funcao cadastrar_manualmente()
	{
		limpa()
		se(ponteiro == quant)
		{
			escreva("Impossível cadastrar novos valores")
			escreva("\n\n---------------------------------------------\n")
			escreva("Pressiona a tecla [ENTER] para retornar")
			leia(enter)
			inicio()
		}senao
		escreva("Informe a idade:\n")
		leia(idade[ponteiro])

		escreva("Informe o nome da pessoa:\n")
		leia(nome[ponteiro])
		
		//Incrementar a variável		ponteiro = ponteiro + 1
		ponteiro++
		
		limpa()
		escreva("\nValor cadastrado com sucesso")
		Util.aguarde(1000)
		inicio()
	}

	funcao cadastrar_automaticamente()
	{
		limpa()
		escreva("Gerando os valores automaticamente. . . ")

		para(x = 0; x < quant; x++)
		{
			idade[x] = Util.sorteia(1, 99)
			nome[x] = Texto.extrair_subtexto("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", x, x+1)
			Util.aguarde(100)
		}

		ponteiro = quant
		
		escreva("\n\nValores cadastrados com sucesso!")
		Util.aguarde(1000)
		inicio()
	}

	funcao ordenarCrescente()
	{
		limpa()
		contador = 0
		escreva("Ordenando valores - Forma crescente")
		
		para(x = 0; x < ponteiro-1; x++)
		{
			para(y = 0; y<ponteiro-1; y++)
			{
				//Testando valores no vetor
				se (idade[y] > idade[y+1])
				{
					temp_idade = idade[y]
					temp_nome = nome[y]
					
					idade[y] = idade[y+1]
					nome[y] = nome[y+1]
					
					idade[y+1] = temp_idade
					nome[y+1] = temp_nome

					contador++
				}
			}
		}
		escreva("\n\nValores ordenados com sucesso!")
		escreva("\nFoi realizado ", contador, " trocas dos valores no vetor.")
		escreva("\n\n---------------------------------------------\n")
		escreva("Pressiona a tecla [ENTER] para retornar")
		leia(enter)
		inicio()
	}

	funcao ordenarDecrescente()
	{
		limpa()
		contador=0
		escreva("Ordenando valores - Forma decrescente")
		
		para(x=0; x<ponteiro-1; x++)
		{
			para(y=0; y<ponteiro-1; y++)
			{
				//Testando valores no vetor
				se (idade[y] < idade[y+1])
				{
					temp_idade = idade[y]
					temp_nome = nome[y]
					
					idade[y] = idade[y+1]
					nome[y] = nome[y+1]
					
					idade[y+1] = temp_idade
					nome[y+1] = temp_nome

					contador++
				}
			}
		}
		escreva("\n\nValores ordenados com sucesso!")
		escreva("\nFoi realizado ", contador, " trocas dos valores no vetor.")
		escreva("\n\n---------------------------------------------\n")
		escreva("Pressiona a tecla [ENTER] para retornar")
		leia(enter)
		inicio()
	}

	funcao exibir()
	{
		limpa()
		para(x=0; x<ponteiro; x++)
		{
			escreva(nome[x], " - ", idade[x], "\n")
		}

		escreva("\n\n---------------------------------------------\n")
		escreva("Pressiona a tecla [ENTER] para retornar")
		leia(enter)
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2088; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 7, 9, 5}-{nome, 8, 8, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */