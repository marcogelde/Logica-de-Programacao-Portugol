programa
{
	funcao inicio()
	{
		cadeia idiomas[8] = {"Japonês", "Holandês", "Australiano","Português - BR","Português - Pt","Lituano","Azerbaijense","Africano"}
		inteiro pais
		escreva("Escolha um País:\n(1) Japão\t(5) Portugal\n(2) Holanda\t(6) Lituânia\n(3) Australia\t(7) Azerbaijão\n(4) Brasil\t(8) África do Sul\n\n")
		leia(pais)
		se(pais >=1 e pais < 9 )
		{
			escreva(idiomas[pais-1])
		}senao{
			escreva("Escolha um país válido.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 123; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */