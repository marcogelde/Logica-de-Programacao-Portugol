programa
{
	inclua biblioteca Tipos
	inclua biblioteca Matematica-->mat

	inteiro x, y, base, resultado=1, expoente
	real r
	
funcao inicio(){
	//Atribuição de valor inicial
	escreva("Valor de x: ") leia(x)
	escreva("Valor de y: ") leia(y) limpa()
	
	//Adição
	r = x + y
	escreva ("Adição: ",r)

	//Subtração
	r = x - y
	escreva ("\nSubtração: ",r)

	//Multiplicação
	r = x * y
	escreva ("\nMultiplicação: ",r)

	//Divisão
	r = x / y
	escreva ("\nDivisão: ",r)

	//Resto
	r = x % y
	escreva (" com resto de: ",r)

	//Exponenciação Utilizando Biblioteca
	r = mat.potencia(x, y)
	escreva("\nExponenciação: ",r)
	
		//Exponenciação
		//base=x
		//expoente=y
		para(inteiro i=0; i<y; i++){
			resultado = x * resultado
		}
		//escreva(resultado)

		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 87; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */