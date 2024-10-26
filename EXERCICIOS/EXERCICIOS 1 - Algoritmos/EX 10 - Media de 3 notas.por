programa
{
	inclua biblioteca Matematica-->m
	funcao inicio()
	{	
		real n1, n2, n3, media
		escreva("Primeira nota: \n") leia(n1)
		escreva("Segunda nota: \n") leia(n2)
		escreva("Terceira nota: \n") leia(n3)

		media = (n1 + n2 + n3) / 3
		escreva("A média da suas 3 notas é igual a: \n", m.arredondar(media, 2))
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */