programa
{
	inteiro num[10], neg=0, pos=0, soma = 0
	funcao inicio()
	{
		para (inteiro i=0; i<10; i++)
		{
			escreva(i+1,"º número: ")
			leia(num[i])
			se (num[i] < 0)
			{
				neg++
			}
			senao 
			{
				pos = pos + num[i]
			}
		}
		escreva("A quantidade de números negativos é: ",neg,"\n")
		escreva("A soma dos números positivos é: ",pos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 176; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */