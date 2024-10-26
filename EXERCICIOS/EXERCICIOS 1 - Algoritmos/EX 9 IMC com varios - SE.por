programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real peso, altura, imc
		
		escreva("Digite seu peso: \n")
		leia(peso)
		limpa()
		escreva("Digite sua altura: \n")
		leia(altura)
		limpa()
		imc = peso / (altura * altura)
		escreva("Seu imc é: ", Matematica.arredondar(imc, 2),"\n")
		se (imc<18.5)
		{
			escreva("Abaixo do peso")
		}
		se (imc>=18.5 e imc<=25)
		{
			escreva("Peso ideal, Parabéns!")
		}
		se (imc>25 e imc<=30)
		{
			escreva("Levemente acima do peso")
		}
		se (imc>30 e imc<=35)
		{
			escreva("Obesidade grau I")
		}
		se (imc>35 e imc<40)
		{
			escreva("Obesidade grau II (severa)")
		}
		se (imc>=40)
		{
			escreva("Obesidade grau III (mórbida)")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {peso, 7, 7, 4}-{altura, 7, 13, 6}-{imc, 7, 21, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */