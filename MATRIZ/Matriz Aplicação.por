programa
{
	
	funcao inicio()
	{
		cadeia nomes[3] = {"Marco","Duda","Nicolas"}
		real notas[3][4] = {{10.0,10.0,9.0,10.0},
						{9.0,7.0,8.0,7.0},
						{9.0,10.0,9.0,10.0}}
		real media[3]
		
		para(inteiro l=0; l<3; l++)
		{
			real sum = 0.0
			para (inteiro c=0; c<4; c++)
			{
				sum = sum + notas[l][c]							
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */