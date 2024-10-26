programa
{
	inclua biblioteca Util
	const inteiro lin=3, col=6

	cadeia	nome[lin][col]
	inteiro	idade[lin][col] //Linhas	//Colunas
	inteiro	linha, coluna
	
	funcao inicio()
	{
		inteiro x, y, num=1
		
		para(x=0; x<lin; x++)
		{
			para(y=0; y<col; y++)
			{
				idade[x][y] = -1 //Preenchendo com -1 pra verificação se tá vazia
			}
		}
		
		limpa()
		escreva("Linha: \n")
		leia(linha)

		escreva("\n\nColuna: \n")
		leia(coluna)

		se(nome[linha][coluna] == "" e idade[linha][coluna] == -1)
		{
			escreva("Qual sua idade:\n")
			leia(idade[linha][coluna])
	
			escreva("Qual seu nome:\n")
			leia(nome[linha][coluna])
			Util.aguarde(30000)
		}
		senao
		{
			limpa()
			escreva("Casa já preenchida")
		}
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */