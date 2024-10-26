programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	
	inteiro	produto[10], total[10], cliente, opcao=0, quant
	logico 	verificar
	caracter	resposta
	
	funcao inicio()
	{
		para (inteiro i=0; i<10; i++)
		{
		escreva("Digite o código do produto: ")
		leia(produto[i])
		escreva("Quantidade em estoque: ")
		leia(total[i])
		}
	limpa()
	escreva("Qual o código do cliente? ")
	leia(cliente)
		escolha(cliente)
		{
			caso 0:
			pare
			caso contrario:
			verificar_codigo()
		}
	}
	
	funcao verificar_codigo()
	{
		verificar = falso
		limpa()
		escreva("Qual o código do produto que você deseja? ")
		leia(opcao)
		
		para (inteiro i=0; i<10; i++)
		{
			se (opcao == produto[i])
			{
				verificar = verdadeiro
				escreva("Quantos ",produto[i]," você deseja?")
				leia(quant)
			
				se (quant > total[i])
				{	
					limpa()
					escreva("AVISO: Não temos estoque suficiente desta mercadoria")
					Util.aguarde(2000)
					verificar_codigo()
				}
				senao 
				{
					escreva("Pedido atendido. Obrigado e volte sempre")
					total[i] = total[i] - quant
					
				}
			}
		}
		
		se (verificar == falso)
		{
			escreva("CÓDIGO INEXISTENTE!")
			Util.aguarde(2000)
			verificar_codigo()
		}
		lista()
	}

	funcao lista()
	{
		limpa()
		para (inteiro i=0; i<10; i++)
		{
		escreva(produto[i], " : ", total[i], "\n") 
		}
	escreva("Deseja mais algum produto? (S/N)\n")
	leia(resposta)
	escolha(resposta)
	{
		caso 'S':
		verificar_codigo()
		pare
		caso 's':
		verificar_codigo()
		pare
		caso contrario:
		escreva("Obrigado e volte sempre!")
		pare
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */