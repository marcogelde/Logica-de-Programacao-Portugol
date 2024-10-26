programa
{
    funcao inicio()
    {
        // Vetores para armazenar as matrículas dos alunos
        inteiro logica[15]
        inteiro programacao[10]
        
        // Variáveis de controle
        inteiro i, j
        inteiro totalLogica, totalProgramacao
        
        // Lendo o número de alunos que cursam Lógica
        escreva("Quantos alunos cursam Lógica? (máximo 15): ")
        leia(totalLogica)
        
        // Garantindo que não ultrapasse o limite de 15
        se (totalLogica > 15)
        {
            totalLogica = 15
        }
        
        // Lendo as matrículas dos alunos que cursam Lógica
        para (i = 0; i < totalLogica; i++)
        {
            escreva("Digite a matrícula do aluno ", i + 1, " que cursa Lógica: ")
            leia(logica[i])
        }
        
        // Lendo o número de alunos que cursam Linguagem de Programação
        escreva("Quantos alunos cursam Linguagem de Programação? (máximo 10): ")
        leia(totalProgramacao)
        
        // Garantindo que não ultrapasse o limite de 10
        se (totalProgramacao > 10)
        {
            totalProgramacao = 10
        }
        
        // Lendo as matrículas dos alunos que cursam Linguagem de Programação
        para (i = 0; i < totalProgramacao; i++)
        {
            escreva("Digite a matrícula do aluno ", i + 1, " que cursa Linguagem de Programação: ")
            leia(programacao[i])
        }
        
        // Verificando e mostrando as matrículas que aparecem nos dois vetores
        escreva("\nMatrículas que cursam simultaneamente Lógica e Linguagem de Programação:\n")
        para (i = 0; i < totalLogica; i++)
        {
            para (j = 0; j < totalProgramacao; j++)
            {
                se (logica[i] == programacao[j])
                {
                    escreva(logica[i], "\n")
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
 * @POSICAO-CURSOR = 1901; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */