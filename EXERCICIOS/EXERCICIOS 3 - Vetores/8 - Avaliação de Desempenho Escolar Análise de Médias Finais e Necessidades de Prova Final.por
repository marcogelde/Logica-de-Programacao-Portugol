programa
{
	inclua biblioteca Matematica --> m
	
	cadeia	nomes[7], maiorAluno
	real		medias[7], maiorMedia = 0.0
	inteiro 	contagemMaior=0
	logico 	empate = falso
	
	funcao inicio()
	{
		para(inteiro i=0; i<7; i++)
		{
		escreva("Qual o nome do ", i+1,"º aluno: ")
		leia(nomes[i])
		escreva("Qual a média do ", i+1,"º aluno: ")
		leia(medias[i])
		limpa()
		}
		para(inteiro i=0; i<6; i++)
		{
			se (medias[i] > medias[i+1] e medias[i] > maiorMedia)
			{
				maiorMedia = medias[i]
				maiorAluno = nomes[i]
			}
		}
		para(inteiro i=0; i<7; i++)
		{
			se (medias[i] == maiorMedia)
			{
				contagemMaior++
			}
		}
		se (contagemMaior > 1){
			empate=verdadeiro
		}senao{
			escreva("A maior média é do aluno ",maiorAluno," com média: ",maiorMedia,"\n")
		}
		para(inteiro i=0; i<7; i++)
		{
			se (medias[i] < 7)
			{
				real notaExame = 10 - medias[i]
				escreva("O aluno ", nomes[i], " precisa tirar ", m.arredondar(notaExame, 2), " na prova de exame para ser aprovado.\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 994; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */