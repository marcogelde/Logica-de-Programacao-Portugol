programa
{
	inteiro n[15], x=30
	logico igualx = falso
	
	funcao inicio()
	{
		dados()
		igual()
	}

	funcao dados()
	{
		para(inteiro i=0; i<15; i++){
		limpa()
		escreva("Qual o seu ",i+1,"º número?\n")
		leia (n[i])
		}
	}

	funcao igual(){
		para(inteiro i=0; i<15; i++){
			se (n[i]==30){
				escreva("Tem número 30 na posição ",i+1,"\n")
				igualx = verdadeiro
			}
		}
		
		se (igualx == falso){
			escreva("Não há número 30")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */