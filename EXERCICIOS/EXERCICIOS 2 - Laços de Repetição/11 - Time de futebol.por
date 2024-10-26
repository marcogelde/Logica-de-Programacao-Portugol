programa
{
	inclua biblioteca 	Matematica --> m
	inteiro	idade[5][11], menorIdade=0, pesado=0
	real		peso[5][11], altura[5][11], mediaIdade[5], mediaAltura=0.0
	cadeia	enterx
	
	funcao inicio()
	{
		para (inteiro i=0; i<5; i++)
		{
			para (inteiro j=0; j<11; j++)
			{
				limpa()
				escreva("====== ",j+1,"º jogador do ",i+1,"º time ======\n")
				escreva("Idade: ")
				leia(idade[i][j])
				escreva("Peso: ")
				leia(peso[i][j])
				escreva("Altura: ")
				leia(altura[i][j])

				se(idade[i][j]<18)
				{
					menorIdade++
				}

				se(peso[i][j]>80)
				{
					pesado++	
				}

				mediaIdade[i] = mediaIdade[i] + idade[i][j]
				mediaAltura = mediaAltura + altura[i][j]
			}
		}
		limpa()
		escreva("A quantidade de jogadores com idade inferior a 18 anos é: ",menorIdade,"\n")
		enter()
		
		para(inteiro i=0; i<5; i++)
		{
			mediaIdade[i] = mediaIdade[i] / 11
			escreva("A média da idade dos jogadores do time ",i+1," é: ",m.arredondar(mediaIdade[i], 2),"\n")
		}
		enter()

		mediaAltura = mediaAltura / 55
		escreva("A média da altura de todos os jogadores do campeonato é: ",m.arredondar(mediaAltura, 2),"\n")
		enter()

		pesado = (pesado * 100) / 55
		escreva("A porcentagem de jogadores com mais de 80kg é: ",pesado,"%\n")
		enter()
	}

	funcao enter()
	{
		escreva("\n================== PRESSIONE QUALQUER TECLA PRA CONTINUAR ==================\n")
		leia(enterx)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 42; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */