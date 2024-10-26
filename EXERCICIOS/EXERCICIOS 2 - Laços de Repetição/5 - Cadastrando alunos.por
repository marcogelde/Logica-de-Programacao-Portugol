programa
{
	cadeia n[10], tempn
	inteiro a[10], tempa
	
	funcao inicio()
	{
		para (inteiro i=0; i<=9; i++)
		{
			limpa()		
			escreva("Qual o nome do ", i+1,"º aluno? ")
			leia (n[i])
			escreva("Altura em centímetros: ")
			leia (a[i])
		}

		para (inteiro i=0; i<=8; i++)
		{
			para (inteiro j=0; j<=8; j++)
			{
				se(a[j+1] > a[j])
				{
					tempa = a[j]
					a[j] = a[j+1]
					a[j+1] = tempa
	
					tempn = n[j]
					n[j] = n[j+1]
					n[j+1] = tempn
				}
			}
		}
		
		limpa()
		escreva("Em ordem do maior aluno para o menor fica: \n")
		
			para (inteiro i=0; i<=9; i++)
			{
				escreva(i+1," ", n[i]," : ", a[i]," centímetros\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */