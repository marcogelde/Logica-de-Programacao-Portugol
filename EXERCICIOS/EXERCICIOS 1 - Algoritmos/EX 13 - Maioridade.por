programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade
		
		escreva("Digite seu nome: \n")
		leia(nome)
		escreva("\nDigite sua idade: \n")
		leia(idade)
		limpa()

		se (idade <18)
		{
			escreva(nome, " você é menor de idade")
		}senao
		{
			escreva(nome ," você é maior de idade")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */