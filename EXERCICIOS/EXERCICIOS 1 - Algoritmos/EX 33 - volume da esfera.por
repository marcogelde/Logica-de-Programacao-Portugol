programa
{
	inclua biblioteca Matematica-->m
	const real pi = 3.14159 
	real raio, volume
	
	funcao inicio()
	{
		escreva("Digite o valor do raio da esfera:\n")
		leia(raio)
		volume = (4/3)*pi*(m.potencia(raio, 3))
		escreva("Volume fica: ",m.arredondar(volume, 2))
	}
}

/*Elaborar um programa de computador que calcule e apresente o valor do volume de
uma esfera.
Utilize a fórmula VOLUME <- (4 / 3) * 3.14159 * (RAIO3).*/

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 360; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */