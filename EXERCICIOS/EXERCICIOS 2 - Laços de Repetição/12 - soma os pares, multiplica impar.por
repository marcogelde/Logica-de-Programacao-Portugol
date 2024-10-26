programa
{
	inteiro	n1, n2, x, soma=0, mult=1
	
	funcao inicio()
	{
		escreva("Digite o primeiro número: ") leia(n1)
		escreva("Digite o segundo número: ") leia(n2)
		
		se(n2<n1)
		{
			x=n2
			n2=n1
			n1=x
		}
	
		limpa()
		somaPar()
		multiplicaImpar()
	}

	funcao somaPar()
	{
		para (inteiro i=n1; i<=n2; i++)
		{
			se (i%2==0)
			{
				soma = soma + i
			}
		}
				escreva("A soma dos números pares desse intervalo de números, incluindo os números digitados é: ",soma) 
	}

	funcao multiplicaImpar()
	{
		para (inteiro i=n1; i<=n2; i++)
		{
			se (i%2!=0)
			{
				mult = mult * i
			}
		}
				escreva("\nA multiplicação dos números ímpares desse intervalo de números, incluindo os números digitados é: ",mult)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n1, 3, 10, 2}-{n2, 3, 14, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */