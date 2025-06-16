Algoritmo "ControleMateriais"
var
   nomes : vetor [1..100] de caractere
   quantidades : vetor [1..100] de inteiro
   logNome : vetor [1..100] de caractere
   logTipo : vetor [1..100] de caractere
   logQtd  : vetor [1..100] de inteiro
   totalItens, totalLog, opcao, i, j : inteiro
   nomeBusca, confirmacao : caractere
   qtdMov : inteiro
   encontrado : logico
inicio
   totalItens <- 0
   totalLog <- 0
   repita

      escreval("============   Destino Certo    ============")
      escreval("")
      escreval("--------------------------------------------")
      escreval(" MENU CONTROLE DE MATERIAIS ")
      escreval("--------------------------------------------")
      escreval("1 - Registrar entrada de item")
      escreval("2 - Registrar saída de item")
      escreval("3 - Relatório de itens em falta")
      escreval("4 - Ver registro de entrada e saída")
      escreval("5 - Ver registro geral")
      escreval("6 - Excluir item")
      escreval("0 - Sair")
      escreval("--------------------------------------------")
      escreval("Escolha uma opção: ")
      leia(opcao)
      limpatela
      escolha opcao
      caso 1
         escreval("--------------------------------------------")
         escreval("Nome do item para entrada: ")
         escreval("--------------------------------------------")
         leia(nomeBusca)
         escreval("--------------------------------------------")
         escreval("Quantidade a adicionar: ")
         escreval("--------------------------------------------")
         leia(qtdMov)
         encontrado <- falso
         para i de 1 ate totalItens faca
            se nomes[i] = nomeBusca entao
               quantidades[i] <- quantidades[i] + qtdMov
               encontrado <- verdadeiro
            fimse
         fimpara
         se nao encontrado entao
            se totalItens < 100 entao
               totalItens <- totalItens + 1
               nomes[totalItens] <- nomeBusca
               quantidades[totalItens] <- qtdMov
            senao
               limpatela
               escreval("!!!!! LIMITE DE ITENS ATINGIDO! !!!!!")
            fimse
         fimse
         se totalLog < 100 entao
            totalLog <- totalLog + 1
            logNome[totalLog] <- nomeBusca
            logTipo[totalLog] <- "Entrada"
            logQtd[totalLog] <- qtdMov
         fimse
         limpatela
         escreval("!!!!! ENTRADA REGISTRADA COM SUCESSO! !!!!!")

      caso 2
         escreval("--------------------------------------------")
         escreval("Nome do item para saída: ")
         escreval("--------------------------------------------")
         leia(nomeBusca)
         encontrado <- falso
         para i de 1 ate totalItens faca
            se nomes[i] = nomeBusca entao
               escreval("--------------------------------------------")
               escreval("Quantidade disponível: ", quantidades[i])
               escreval("--------------------------------------------")
               escreval("--------------------------------------------")
               escreval("Quantidade a retirar: ")
               escreval("--------------------------------------------")
               leia(qtdMov)
               se quantidades[i] >= qtdMov entao
                  quantidades[i] <- quantidades[i] - qtdMov
                  limpatela
                  escreval("!!!!! SAÍDA REGISTRADA COM SUCESSO! !!!!!")
                  se totalLog < 500 entao
                     totalLog <- totalLog + 1
                     logNome[totalLog] <- nomeBusca
                     logTipo[totalLog] <- "Saída"
                     logQtd[totalLog] <- qtdMov
                  fimse
               senao
                  limpatela
                  escreval("!!!!! QUANTIDADE INSUFICIENTE NO ESTOQUE !!!!!.")
               fimse
               encontrado <- verdadeiro
            fimse
         fimpara
         se nao encontrado entao
            limpatela
            escreval("!!!!! ITEM NÃO ENCONTRADO! !!!!!.")
         fimse
      caso 3
         escreval("!!!!! ITENS EM FALTA  !!!!!")
         para i de 1 ate totalItens faca
            se quantidades[i] <= 0 entao
               escreval("Item: ", nomes[i], " - Quantidade: ", quantidades[i])
            fimse
         fimpara
      caso 4
         escreval("--------------------------------------------")
         escreval(" REGISTRO DE ENTRADA E SAÍDA ")
         escreval("--------------------------------------------")
         para i de 1 ate totalLog faca
            escreval("Item: ", logNome[i], " | Tipo: ", logTipo[i], " | Quantidade: ", logQtd[i])
         fimpara
      caso 5
         escreval("--------------------------------------------")
         escreval(" REGISTRO GERAL ")
         escreval("--------------------------------------------")
         para i de 1 ate totalItens faca
            escreval("Item: ", nomes[i], " | Quantidade atual: ", quantidades[i])
         fimpara
      caso 6
         escreval("--------------------------------------------")
         escreval("Nome do item que deseja excluir: ")
         escreval("--------------------------------------------")
         leia(nomeBusca)
         encontrado <- falso
         para i de 1 ate totalItens faca
            se nomes[i] = nomeBusca entao
               escreval("--------------------------------------------")
               escreval("Tem certeza que deseja excluir '", nomeBusca, "'? (S/N): ")
               escreval("--------------------------------------------")
               leia(confirmacao)
               se (confirmacao = "S") ou (confirmacao = "s") entao
                  para j de i ate totalItens - 1 faca
                     nomes[j] <- nomes[j + 1]
                     quantidades[j] <- quantidades[j + 1]
                  fimpara
                  totalItens <- totalItens - 1
                  limpatela
                  escreval("!!!!! ITEM EXCLUÍDO COM SUCESSO! !!!!!.")
               senao
                  limpatela
                  escreval("!!!!! EXCLUSÃO CANCELADA! !!!!!.")
               fimse
               encontrado <- verdadeiro
            fimse
         fimpara
         se nao encontrado entao
            escreval("--------------------------------------------")
            escreval("Item não encontrado.")
            escreval("--------------------------------------------")
         fimse
      caso 0
         escreval("Encerrando o programa...")
      outrocaso
         escreval("Opção inválida. Tente novamente.")
      fimescolha
      escreval("")
   ate opcao = 0
fimalgoritmo