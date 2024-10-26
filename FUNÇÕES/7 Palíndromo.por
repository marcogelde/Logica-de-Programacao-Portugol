programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
     	escreva("radar é palíndromo? ", palindromo("radar"), "\n")
     	escreva("python é palíndromo? ", palindromo("python"), "\n")
    	}

    funcao logico palindromo(cadeia s)
    {
        inteiro iniciox = 0
        inteiro fim = t.numero_caracteres(s)-1

        enquanto (iniciox < fim)
        {
            se (t.obter_caracter(s, iniciox) != t.obter_caracter(s, fim))
            {
                retorne falso
            }
            iniciox++
            fim--
        }
        retorne verdadeiro
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */