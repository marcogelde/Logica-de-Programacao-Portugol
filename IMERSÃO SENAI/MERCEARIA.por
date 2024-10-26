programa
{
	inclua biblioteca Util --> u

	const inteiro total = 4
	
	cadeia 	listap[10], enter
	real 	final = 0.0, listav[10], finalf = 0.0
	inteiro 	quant = 0, n = 0
	caracter	opcao

	funcao inicio()
	{
		escreva("=================== MERCEARIA ===================\n")
		escreva("(1) Lista de Produtos\n(2) Carrinho\n(3) Finalizar compra\n")
		leia(opcao)
		limpa()
		escolha(opcao)
		{
			caso '1':
			lista()
			pare
			caso '2':
			carrinho()
			pare
			caso '3':
			calcular_valor_final()
			pare
			caso contrario:
			limpa()
			escreva("AVISO: Opção invalida!")
			u.aguarde(2000)
			limpa()
			inicio()
			pare
		}
	}
	
	funcao lista()
	{
		escreva("========== LISTA DE PRODUTOS ==========\n")
		escreva("(1) Arroz: \tR$30,00\n(2) Bolacha: \tR$3,00\n(3) Leite: \tR$4,00\n(4) Feijão: \tR$7,00\n\n")
		escreva("Qual item você deseja comprar?\n")
		leia(opcao)
		escolha(opcao)
		{
			caso '1':
				listap[n] = "Arroz"
				listav[n] = 30.0
				n = n+1
				quant = quant + 1
			pare
			caso '2':
				listap[n] = "Bolacha"
				listav[n] = 3.00
				n = n+1
				quant = quant + 1
			pare
			caso '3':
				listap[n] = "Leite"
				listav[n] = 4.00
				n = n+1
				quant = quant + 1
			pare
			caso '4':
				listap[n] = "Feijão"
				listav[n] = 7.00
				n = n+1
				quant = quant + 1
			pare
			caso contrario:
			limpa()
			escreva("AVISO: Opção invalida!")
			u.aguarde(2000)
			limpa()
			lista()
			pare
		}
		limpa()
		escreva("Você deseja comprar mais algum produto?\n(1) Sim\n(2) Não\n")
		leia(opcao)
		limpa()
		escolha(opcao)
		{
			caso '1': lista()
			pare
			caso '2': inicio()
			pare
			caso contrario:
			limpa()
			escreva("AVISO: Opção invalida!")
			u.aguarde(2000)
			limpa()
			lista()
			pare
		}
		
	}

	funcao carrinho()
	{
		se (quant==0)
		{
		escreva("AVISO = Nenhum produto no Carrinho")
		u.aguarde(2000)
		limpa()
		inicio()
		}
		
		limpa()
		escreva("========== CARRINHO ==========\n")
		para(n = 0; n <quant; n++)
			{

				escreva(listap[n], " - Valor: R$", listav[n], "\n")
			}
		u.aguarde(4000)
		limpa()
		calcular_valor_final()
	}

	funcao calcular_valor_final()
	{
		se (quant==0)
		{
		escreva("AVISO = Nenhum produto no Carrinho")
		u.aguarde(2000)
		limpa()
		inicio()
		}
		para(n=0; n<quant; n++)
		{
			final = final + listav[n]
			limpa()
			
			se (quant>3)
			{
				finalf = final - (final * 0.05)
				escreva("========== VALOR FINAL COM DESCONTO DE 5% ==========\n")
				escreva("Valor final da sua compra com 5% de desconto fica: \nR$",finalf,"\n\n")
			}
			senao
			{
			escreva("========== VALOR FINAL SEM DESCONTO ==========\n")
			escreva("Valor final da sua compra sem desconto fica: \nR$",final,"\n\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */