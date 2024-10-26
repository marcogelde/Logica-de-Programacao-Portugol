programa
{
	inclua biblioteca Matematica
	caracter	opcao
	cadeia 	t1, t2
	inteiro 	v1=0, v2=0, n = 0
	real		p1 = 0.0, p2 = 0.0, p3 = 0.0, total = 0
	
	funcao inicio()
	{
		escreva("Você deseja criar uma enquete?\n(1) Sim\n(2) Não\n")
		leia(opcao)
		escolha(opcao)
		{
			caso '1':
			limpa()
			registro_tema()
			pare
			caso '2':
			limpa()
			nao_precisa_enquete()
		}
	}
	
	funcao registro_tema()
	{
		escreva("Qual o primeiro tema?\n")
		leia(t1)
		escreva("\nQual o segundo tema?\n")
		leia(t2)
		limpa()
		registra_enquete()
	}
	
	funcao registra_enquete()
	{
		escreva("Selecione qual tema você deseja votar:\n(1) ",t1,"\n(2) ",t2,"\n")
		leia(opcao)
		limpa()
		escolha(opcao)
		{
			caso '1':
			v1 = v1 + 1
			pare
			
			caso '2':
			v2 = v2 + 1
			pare

			caso contrario:
			n = n + 1
			pare
		}
			escreva("Deseja continuar a enquete?\n(1) Sim\n(2) Não\n")
			leia(opcao)
			limpa()
			se (opcao == '1')
			{
				registra_enquete()
			}
			senao
			{
				exibe_resultado_enquete()
			}
						
	}
	
	funcao exibe_resultado_enquete()
	{
		total = p1+p2+n
		p1=v1
		p2=v2
		p3=n
		total_a = p1/total
		total_b = p2/total
		total_c = n/total
		
		
		escreva("O resultado da votação ficou: \n")
		escreva(t1, ": ", v1, " \n")
		escreva(t2, ": ", v2, " \n")
		escreva("Nulos: ", n, " \n")
		
		escreva(voto_a ," votos em ",tema_a," = ",Matematica.arredondar(total_a*100, 1)," % \n")
		escreva(voto_b ," votos em ",tema_b," = ",Matematica.arredondar(total_b*100, 1)," % \n")
		escreva(voto_c ," votos em ",tema_c," = ",Matematica.arredondar(total_c*100, 1)," % \n")
		escreva(voto_nulo ," votos em NULO = ",Matematica.arredondar(total_nulo*100, 1)," % \n")
	}
	
	funcao nao_precisa_enquete()
	{
	escreva("Parabéns!!! Você não precisa de uma enquete!\n\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1319; 
 * @DOBRAMENTO-CODIGO = [8, 24, 34, 89];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */