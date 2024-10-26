programa {

  inteiro opcao, enigma, bau, cela

  funcao inicio() 
  {
    escreva("Você é um Ladino famoso da cidade de Juria, existe uma lenda que ao derrotar o mago supremo da masmorra você conseguirá todas as riquezas da masmorra.\nEntão você decide embarcar nessa jornada milenar:\nQual caminho você prefere 1, 2 ou 3?")
    
    escreva("\n1: Uma sala misteriosa.\n")

    escreva("2: Uma sala com um baú.\n") 

    escreva("3: Uma sala com duas celas.\n")
    leia(opcao)
    limpa()
    escolha(opcao)
    {
      caso 1: 
      {
        escreva("Você entrou na sala misteriosa e se deparou com um super enigma: (5+9)*(81/9)= ?\nEscreva o resultado: \n")
        leia(enigma)
        limpa()
        se (enigma == 126) {
           escreva("Você acertou o super enigma.\nReceba uma arma poderosa que causa dano critico ao Mago Supremo.\nVocê acessou a batalha final contra o Mago Supremo e apunhalou ele com sua nova espada assim o derrotando e adquirindo suas riquezas!!!\n==================== FIM DE JOGO ===================")
        } senao {
          escreva("Você errou. Perdeu a chance única de ganhar uma arma lendária e vencer o Mago Supremo. Jogo acabado aqui\nMorreu!!!")
        }
      }
      caso 2:
      {
        escreva("Você entrou na sala com um baú grande e dourado, vislumbrante aos olhos de quem vê.\nVocê deseja abrir o baú?\n Opção1: Sim\n Opção2: Não\n")
        leia(bau)
        limpa()
        se (bau==1) 
        {
          escreva("Você morreu. Porque é um bau mimico, que é um monstro disfarçado de baú e te devorou!!!")
        } senao {
          escreva("Você decidiu não abrir o baú, passou pra próxima sala e nela tinha uma runa de selamento.\nVocê equipa na sua arma e apunhala o Mago Supremo e o sela.\nParabéns ganhou o jogo!!!")
        }
      }
      caso 3:
      {
        escreva("Você entrou numa cela com dois prisioneiros para escolher qual salvar e então conseguir acessar a próxima sala:\nQuem você quer salvar?\n1: Um homem bombado e feio com cicatriz\n2: Uma criança chorando com fome") 
        leia(cela)
        limpa()
        se (cela == 1)
        { 
          escreva("Você escolheu salvar o bombado, na próxima sala ele te ajuda a lutar com o mago supremo, porém os dois morrem e só sobra você, que fica com todas as relíquias\nParabéns ganhou o jogo!!!")
        } senao {
          escreva("Você escolheu salvar a criança, na sala seguinte tem um mago supremo muito forte, mas você não consegue lutar com o mago e cuidar da criança ao mesmo tempo e os dois morrem")
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
 * @POSICAO-CURSOR = 2572; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */