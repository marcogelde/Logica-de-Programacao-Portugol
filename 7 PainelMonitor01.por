programa
{
	
	inteiro litros, liquido
	real temperatura
	logico alarme 
	
	funcao inicio()
	{
		litros = 125
		temperatura = 64
		liquido = 0
		alarme = (litros > 150)
		escreva(alarme)
		alarme = (temperatura > 55)
		escreva(alarme)
		alarme = (liquido != 0)
		escreva(alarme)
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */