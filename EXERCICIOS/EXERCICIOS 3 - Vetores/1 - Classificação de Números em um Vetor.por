programa
{
	const inteiro quant = 6
	
	inteiro vetor[quant], par = 0, impar = 0
	
	funcao inicio()
	{
		para (inteiro i=0; i<=5; i++)
		{
		escreva("Escreva o seu ", i+1,"º número inteiro: \n")
		leia(vetor[i])
		}
		limpa()
		escreva("\nSeus números pares são: ")
		
		para (inteiro i=0; i<quant; i++)
		{
			se (vetor[i]%2 == 0)
			{
				par++
				escreva(vetor[i]," ")
			}
		}
		escreva("\nTotalizando ",par," número(s) par(es)")

		escreva("\nSeus números impares são: ")
		
		para (inteiro i=0; i<quant; i++)
		{
			se (vetor[i]%2 != 0)
			{
				impar++
				escreva(vetor[i]," ")
			}
		}
		escreva("\nTotalizando ",impar," número(s) ímpar(es)")
	}	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */