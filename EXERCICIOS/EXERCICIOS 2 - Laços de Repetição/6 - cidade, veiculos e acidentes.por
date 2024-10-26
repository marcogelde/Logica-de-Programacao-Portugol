programa
{
	inteiro cidade[5], veiculos[5], acidentes[5], temp=0, media
	
	funcao inicio()
	{
		para (inteiro i=0; i<=4; i++)
		{
		escreva("Qual o código da ",i+1,"ª cidade? ")
		leia(cidade[i])
		escreva("Qual a quantidade de veículos de passeio em 1999? ")
		leia(veiculos[i])
		escreva("Quantos acidentes com vítimas em 1999: ")
		leia(acidentes[i])
		}
	a()
	}

	funcao a()
	{
		para (inteiro i=0; i<=4; i++)
		{
			para (inteiro j=0; j<=3; j++)
			{
				se (acidentes[j] < acidentes [j+1])
				{
					temp = acidentes[j]	
					acidentes[j] = acidentes [j+1]
					acidentes [j+1] = temp

					temp = cidade[j]	
					cidade[j] = cidade [j+1]
					cidade [j+1] = temp

					temp = veiculos[j]	
					veiculos[j] = veiculos [j+1]
					veiculos [j+1] = temp
				}
			}
		}
		limpa()
		escreva("a) O maior índice de acidentes é da cidade ",cidade[0], " com ", acidentes[0], " acidentes")
		escreva("\nO menor índice de acidentes é da cidade ",cidade[4], " com ", acidentes[4], " acidentes")
		b()
	}

	funcao b()
	{
		temp=0
		para (inteiro i=0; i<=4; i++)
			{
				temp = temp + veiculos[i]
			}
		media = temp/5
		escreva("\nb) A média de veículos nas cinco cidades juntas é: ",media)
		c()
	}

	funcao c()
	{
		inteiro mediac = 0
		temp = 0
		para (inteiro i=0; i<=4; i++)
		{
			se (veiculos[i] < 2000)
			{
				temp++
				mediac = mediac + veiculos[i]
			}
		}
		media = mediac/temp
		escreva("\nc) A média de acidentes de trânsito nas cidades com menos de 2.000 veículos de passeio é: ",media)
	}
}

/*Foi feita uma estatística em cinco cidades brasileiras para coletar dados sobre
acidentes de trânsito. Foram obtidos os seguintes dados:
a) código da cidade;
b) número de veículos de passeio (em 1999);
c) número de acidentes de trânsito com vítimas (em 1999).
Deseja-se saber:
a) qual o maior e o menor Índice de acidentes de trânsito e a que cidades
pertencem;
b) qual a média de veículos nas cinco cidades juntas;
c) qual a média de acidentes de trânsito nas cidades com menos de 2.000 veículos
de passeio
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 383; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */