programa
{
	inclua biblioteca Calendario
	
	funcao inicio()
	{
		inteiro ano, mes, dia
		
		escreva("Que ano você nasceu? \n")
		leia(ano)
		ano = Calendario.ano_atual() - ano
		
		escreva("Que mês você nasceu? 0-12\n")
		leia(mes)
		mes = Calendario.mes_atual() - mes
			
		escreva("Que dia você nasceu? \n")
		leia(dia)
		dia = Calendario.dia_mes_atual() - dia

		se (mes<0 e dia<=0)
		{
		ano = ano-1
		mes = mes+12
		dia = dia+30
		escreva("Você tem ",ano, " anos, ", mes, " meses e ",dia, " dias")
		}
		
		senao se (mes<12 e mes>0 e dia<0)
		{
		dia = dia+30
		escreva("Você tem ",ano, " anos, ", mes, " meses e ",dia, " dias")
		}

		senao se (mes<12 e mes>0 e dia<32)
		{
		escreva("Você tem ",ano, " anos, ", mes, " meses e ",dia, " dias")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */