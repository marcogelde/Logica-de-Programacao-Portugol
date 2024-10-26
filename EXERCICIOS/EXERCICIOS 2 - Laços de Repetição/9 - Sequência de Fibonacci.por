programa
{
	inteiro	f[12]
	
	funcao inicio()
	{
	f[0]=0	f[1]=1
	
		para (inteiro i=2; i<=11; i++)
		{
			f[i]=f[i-1]+f[i-2]
		}
		escreva(f[0]," ",f[1]," ",f[2]," ",f[3]," ",f[4]," ",f[5]," ",f[6]," ",f[7]," ",f[8]," ",f[9]," ",f[10]," ",f[11])
	}
}

/*F(n)=F(n−1)+F(n−2)
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {f, 3, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */