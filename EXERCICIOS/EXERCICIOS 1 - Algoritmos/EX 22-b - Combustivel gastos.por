programa
{
	inteiro v, d, l
	real t
	
	funcao inicio()
	{
		escreva("Quanto tempo você gastou na sua viagem?\nMinutos: ")
		leia(t) 
		t = t/60 limpa()
		escreva("Qual foi a velocidade média?\n")
		leia(v) limpa()
		d = t*v
		l = d/12
		escreva("Você gastou ",l," litros de combustível nessa viagem.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 287; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */