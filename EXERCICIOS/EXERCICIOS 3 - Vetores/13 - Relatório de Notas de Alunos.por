programa
{
	inclua biblioteca Matematica --> m
	
	const inteiro quant = 8
	
	cadeia	nome[quant]
	real 	nota[quant], soma=0.0, media
	
	funcao inicio()
	{
		para (inteiro i=0; i<quant; i++)
		{
			escreva("Digite o nome do ",i+1,"º Aluno: ")
			leia(nome[i])
			escreva("Digite a nota do ", nome[i],": ")
			leia(nota[i])
			soma = soma+nota[i]
		}
		
		media = soma / quant
		limpa()
		escreva("Relatório de notas: \nAlunos\tNota\n")
		
		para (inteiro i=0; i<quant; i++)
		{
			escreva(nome[i],"\t",nota[i],"\n")
		}
		escreva("\nMédia da classe: ", m.arredondar(media, 2))
		
	}
}

/*
Faça um programa que receba o nome e a nota de oito alunos e mostre o relatório a
seguir:
Digite o nome do 1.º Aluno
Carlos
Digite a nota do Carlos
8
Digite o nome do 2.º Aluno
Ana
Digite a nota da Ana
9
Digite o nome do 3.º Aluno
Pedro
Relatórios de notas:
Alunos Nota
Carlos 8.0
Ana 9.0
Pedro 4.0
Marcos 6.5
Jessica 7.8
Média da classe: ?

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 75; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 8, 30, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */