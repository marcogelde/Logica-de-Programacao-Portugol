programa //"CalcularIMC"
{
	//Var
	real altura, peso, imc
	logico pesoIdeal
	
	funcao inicio()
	{
		altura = 1.85
		peso = 85.5
		imc = (peso / (altura * altura))
		escreva("IMC: ", imc)
		
		pesoIdeal = (imc >= 18.5) e (imc < 25)
		escreva("\nPeso ideal: ", pesoIdeal)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */