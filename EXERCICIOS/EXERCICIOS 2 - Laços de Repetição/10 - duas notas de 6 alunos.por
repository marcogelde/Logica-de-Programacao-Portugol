programa
{
	inclua biblioteca Matematica --> m
	
	real 	notas[2][6], media[6], final = 0.0
	inteiro 	aprovado=0, reprovado=0, exame=0
	
	funcao inicio()
	{
	notasx()
	medias()
	mensagem_1()
	mensagem_2()
	media_classe()
	}

	funcao notasx()
	{
		para (inteiro i=0; i<6; i++)
		{
		escreva("Digite a 1ª nota do ", i+1,"º aluno: ")
		leia(notas[0][i])
		escreva("Digite a 2ª nota do ", i+1,"º aluno: ")
		leia(notas[1][i])
		limpa()
		}
	}
	
	funcao medias()
	{
		para (inteiro i=0; i<6; i++)
		{
			media[i] = (notas[0][i] + notas[1][i]) / 2
		}
	}
	
	funcao mensagem_1()
	{
		limpa()
		para (inteiro i=0; i<6; i++)
		{
			escreva(i+1,"º Aluno:")
			se (media[i] < 3)
			{
				reprovado++
				escreva(" Reprovado com média ", m.arredondar(media[i], 2))
			}
			se (media[i] >=3 e media[i]<7)
			{
				exame++
				escreva(" Foi pro exame com média ", m.arredondar(media[i], 2))
			}
			se (media[i] >=7)
			{
				aprovado++
				escreva(" Aprovado com média ", m.arredondar(media[i], 2))
			}
			escreva("\n")
		}
	}

	funcao mensagem_2()
	{
		escreva("\nAlunos aprovados: ",aprovado)
		escreva("\nEm exame: ",exame)
		escreva("\nReprovado: ",reprovado)
	}

	funcao media_classe()
	{
		para (inteiro i=0; i<6; i++)
		{
			final = final + media[i]
		}
		final= final/6
		escreva("\nMédia da classe: ", m.arredondar(final, 2),"\n\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1329; 
 * @DOBRAMENTO-CODIGO = [16, 28, 36, 61];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 5, 8, 5}-{media, 5, 21, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */