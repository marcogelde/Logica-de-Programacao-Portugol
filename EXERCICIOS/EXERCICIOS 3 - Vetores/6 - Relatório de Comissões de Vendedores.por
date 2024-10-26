programa
{
	real		vendas[10], comissao[10], total[10]
	inteiro	percentual[10], maior = 0, menor = 0
	cadeia	vendedores[10], enter
	
	funcao inicio()
	{
		para (inteiro i=0; i<10; i++)
		{
			limpa()
			escreva("Qual o nome do ",i+1,"º vendedor? ")
			leia (vendedores[i])
			escreva("Qual o total das vendas do(a) ",vendedores[i],"? ")
			leia (vendas[i])
			escreva("Qual o percentual de comissão do ",vendedores[i],"? ")
			leia(percentual[i])
		}
		limpa()
		escreva("======================= COMISSÃO =======================\n")
		para (inteiro i=0; i<10; i++)
		{
			comissao[i] = vendas[i] * percentual[i]/100
			escreva("Vendedor ",vendedores[i], " recebe R$",comissao[i],"\n")
		}
		enterx()

		escreva("======================= TOTAL DAS VENDAS =======================\n")
		para (inteiro i=0; i<10; i++)
		{
			total[i] = comissao[i]+vendas[i]
			escreva("Vendedor ",vendedores[i], " recebe R$",total[i],"\n")
		}
		enterx()

		para (inteiro i=0; i<9; i++)
		{	
			se (total[i] > total[i+1] e total[i] >= total[maior]){
			maior = i
			}
		}
		escreva("O maior valor a receber é R$",total[maior]," do Vendedor ", vendedores[maior])
		enterx()

		para (inteiro i=0; i<9; i++)
		{	
			se (total[i] < total[i+1] e total[i] <= total[menor]){
			menor = i
			}
		}
		escreva("O menor valor a receber é R$",total[menor]," do Vendedor ", vendedores[menor])
		enterx()
	}

	funcao enterx()
	{
		escreva("\n\n========== Aperte qualquer tecla para continuar ==========")
		leia(enter)
		limpa()
	}
}

/* Faça um programa que receba o total das vendas de cada vendedor de uma loja e
armazene-as em um vetor. Receba também o percentual de comissão a que cada vendedor
tem direito e armazene-os em outro vetor.
Receba os nomes desses vendedores e armazene-os em um terceiro vetor. Existem apenas
dez vendedores na loja. Calcule e mostre:
a- um relatório com os nomes dos vendedores e os valores a receber referentes à
comissão;
b - o total das vendas de todos os vendedores;
c - o maior valor a receber e o nome de quem o receberá;
d - o menor valor a receber e o nome de quem o receberá.


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 690; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vendas, 3, 7, 6}-{comissao, 3, 19, 8}-{total, 3, 33, 5}-{percentual, 4, 9, 10}-{maior, 4, 25, 5}-{menor, 4, 36, 5}-{vendedores, 5, 8, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */