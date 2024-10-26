programa
{
	inclua biblioteca Util
	inteiro n, f = 1		//n numero, f fatorial
	
	funcao inicio()
	{
		escreva("Escreva um valor inteiro e positivo: \n")
		leia(n)
		se (n <= 0)
		{
			limpa()
			escreva("Aviso: DIGITE UM VALOR VÁLIDO")
			Util.aguarde(2000)
			limpa()
			inicio()
		}senao
		{
			para (inteiro i=1; i<=n; i++)
			{
				f=f*i
			}
			escreva("O fatorial de ", n," fica: ", f)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 77; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 4, 10, 1}-{i, 19, 17, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */