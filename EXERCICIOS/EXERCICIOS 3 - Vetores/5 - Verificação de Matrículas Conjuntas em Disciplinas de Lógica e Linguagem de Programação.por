programa
{
	inteiro logica[15], ling[10], lista[10], n=0, temp=0
	
	funcao inicio()
	{
		matricula()
		lerAlunos()
		verificar()
	}

	funcao matricula()
	{
		para (inteiro i=0; i<15; i++)
		{
			limpa()
			escreva("Matricula do ",i+1,"º aluno de Lógica: \n")
			leia (logica[i])
		}

		para (inteiro i=0; i<10; i++)
		{
			limpa()
			escreva("Matricula do ",i+1,"º aluno de Linguagem de Programação: \n")
			leia (ling[i])
		}
	}

	funcao lerAlunos()
	{
		limpa()
		para (inteiro i=0; i<15; i++)
		{
			escreva(logica[i],"\n") 
		}
		
		escreva("\n\n")
		
		para (inteiro i=0; i<10; i++)
		{
			escreva(ling[i],"\n") 
		}
		
	}

	funcao verificar()
	{
		para (inteiro i=0; i<15; i++)
		{
			para (inteiro j=0; j<10; j++)
			{
				se (logica[i] == ling[j])
				{	
					lista[j] = logica[i]
					escreva("Alunos matriculados nas duas disciplinas: ", lista[j],"\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */