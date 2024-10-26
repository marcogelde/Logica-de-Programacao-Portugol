programa
{
	inteiro v1[10], v2[5]
	
	funcao inicio()
	{
		escreva("======== VETOR 1 ========\n")
		para(inteiro i=0; i<10; i++)
		{
			escreva("Digite o ",i+1,"º número: ")
			leia (v1[i])
		}
		limpa()

		escreva("======== VETOR 2 ========\n")
		para(inteiro i=0; i<5; i++)
		{
			escreva("Digite o ",i+1,"º número: ")
			leia (v2[i])
		}
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {v1, 3, 9, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */