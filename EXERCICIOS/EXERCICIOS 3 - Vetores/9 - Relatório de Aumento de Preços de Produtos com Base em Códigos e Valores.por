programa
{
    cadeia 	produto[10]
    inteiro 	codigo[10]
    real 		preco[10]
    
    funcao inicio()
    {
        para (inteiro i=0; i<10; i++)
        {
            escreva("Qual o nome do ",i+1,"º produto? ")
            leia(produto[i])
            escreva("Qual o código do ",produto[i],": ")
            leia(codigo[i])
            escreva("Qual o preço do ",produto[i],": ")
            leia(preco[i])
            limpa()
        }
        par()
        relatorio()
    }

    funcao par()
    {
        para (inteiro i=0; i<10; i++)
        {
            se (codigo[i] % 2 == 0)
            {
                se (preco[i] > 1000)
                {
                    preco[i] = preco[i] + (preco[i] * 0.2)
                }
                senao
                {
                    preco[i] = preco[i] + (preco[i] * 0.15)
                }
            }
            senao
            {
                se (preco[i] > 1000)
                {
                    preco[i] = preco[i] + (preco[i] * 0.1)
                }
            }
        }
    }

    funcao relatorio()
    {
        escreva("========================== RELATÓRIO ==========================\n")
        para (inteiro i=0; i<10; i++)
        {
            escreva(produto[i]," com código ",codigo[i],", valor: R$",preco[i],"\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 506; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */