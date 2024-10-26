programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util
	inclua biblioteca Texto --> t
	
	inteiro	codigo[10], horas[10], i=0, vhora[10], p=0
	caracter	categoria[10], turno[10], opcao, enter
	real		salarioMinimo = 150.0, salarioInicial[10], auxilioAlimentacao[10], salarioFinal[10]
	
	funcao inicio()
	{
		menu()
	}

	funcao menu()
	{
		limpa()
		escreva("============= MENU DA EMPRESA =============")
		escreva("\n(1) Adicionar informações dos Funcionários")
		escreva("\n(2) Listar informações dos Funcionários")
		escreva("\n(3) Finalizar programa\n")
		leia(opcao)
		escolha (opcao)
		{
			caso '1':
				lerInfo()
			pare
			caso '2':
				listar()
			pare
			caso '3':
				finalizar()
			pare
			caso contrario:
				limpa()
				escreva("OPÇÃO INVÁLIDA")
				Util.aguarde(2000)
				menu()
			pare
		}
	}
	
	funcao lerInfo()
	{
		limpa()
		escreva("Código do ",p+1,"º funcionário: ")
		leia(codigo[p])
		
		escreva("Número de horas trabalhadas no mês: ")
		leia(horas[p])

		escreva("Turno de trabalho: (M — Matutino, V — Vespertino ou N — Noturno) ")
		leia(turno[p])
		//t.caixa_alta(turno[i])
		
		escreva("Categoria: (O — Operário ou G — Gerente) ")
		leia(categoria[p])
		p++
		menu()
	}

	funcao horaTrabalhada()
	{
		para (i=0; i<10; i++)
		{
			se (categoria[i] == 'G' e turno[i] == 'N')
			{
					vhora[i] = salarioMinimo * 0.18 //27
			}
			se (categoria[i] == 'G' e turno[i] == 'M' ou turno[i] == 'V')
			{
					vhora[i] = salarioMinimo * 0.15 //22.5
			}
			se (categoria[i] == 'O' e turno[i] == 'N')
			{
					vhora[i] = salarioMinimo * 0.13 //19.5
			}
			se (categoria[i] == 'O' e turno[i] == 'M' ou turno[i] == 'V')
			{
					vhora[i] = salarioMinimo * 0.10 //15
			}
		}
	}

	funcao salarioInicialx()
	{
		para (i=0; i<10; i++)
		{
			salarioInicial[i] = vhora[i] * horas[i]
			m.arredondar(salarioInicial[i], 2)
		}
	}

	funcao auxilioAlimentacaox()
	{
		para (i=0; i<10; i++)
		{
			se (salarioInicial[i] < 300.0)
			{
				auxilioAlimentacao[i] = salarioInicial[i] * 0.20
			}
			se (salarioInicial[i] >= 300.0 e salarioInicial[i] < 600.0)
			{
				auxilioAlimentacao[i] = salarioInicial[i] * 0.15
			}
			se (salarioInicial[i] >= 600.0)
			{
				auxilioAlimentacao[i] = salarioInicial[i] * 0.05
			}
		}
	}

	funcao salarioFinalx()
	{
		para (i=0; i<10; i++)
		{
			salarioFinal[i] = salarioInicial[i] + auxilioAlimentacao[i]
		}
	}
	
	funcao listar()
	{
		limpa()
		horaTrabalhada()
		salarioInicialx()
		auxilioAlimentacaox()
		salarioFinalx()
		
		para (i=0; i<p; i++)
		{
				escreva("=========================================")
				escreva("\nFuncionário: ",codigo[i])
				escreva("\nNúmero de horas trabalhadas: ",horas[i],"h")
				escreva("\nValor da hora trabalhada: R$",vhora[i])
				escreva("\nSalário inicial: R$",salarioInicial[i])
				escreva("\nAuxílio alimentação: R$",m.arredondar(auxilioAlimentacao[i], 2))
				escreva("\nSalário final: R$",salarioFinal[i],"\n")
		}
		retornar()
	}

	funcao retornar()
	{
		escreva("\n=========================================\n")
		escreva("Pressione a tecla [ENTER] para retornar!")
		leia(enter)
		menu()
	}
		
	funcao finalizar()
	{	
		limpa()
		escreva("Obrigado, volte sempre!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1111; 
 * @DOBRAMENTO-CODIGO = [85];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */