programa
{
	inteiro n,m, f = 1, valor
	funcao inicio()
	{
		escreva("Digite um número: \n")
		leia(n)
		
		para (inteiro i=1; i<=n; i++)
			{
				f=f*i
			}
			escreva("O fatorial de ", n," fica: ", f)
			
		escreva("\n\nQuantos valores inteiros e positivos você vai querer o fatorial?\n")
		leia(valor)
		f=1
		para (inteiro i = 1; i<=valor; i++)
		{
			escreva("Digite um número: \n")
			leia(m)
				para (inteiro j=1; j<=m; j++)
				{
					f=f*j
				}
				escreva("O fatorial de ", m," fica: ", f, "\n")
				f=1
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */