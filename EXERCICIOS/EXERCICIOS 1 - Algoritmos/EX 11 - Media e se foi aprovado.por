programa
{
	inclua biblioteca Matematica-->m
	funcao inicio()
	{	
		real n1, n2, n3, n4, media
		escreva("Primeira nota: \n") leia(n1)
		escreva("Segunda nota: \n") leia(n2)
		escreva("Terceira nota: \n") leia(n3)
		escreva("Quarta nota: \n") leia(n4)

		media = (n1 + n2 + n3 + n4) / 4
		escreva("Sua média é: \n", m.arredondar(media, 2))
		se (media>=7)
		{
			escreva(" Parabéns, você foi aprovado!!!\n\n\n")
		}senao{
			escreva(" Reprovado, precisa estudar mais!\n\n\n")
		}
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */