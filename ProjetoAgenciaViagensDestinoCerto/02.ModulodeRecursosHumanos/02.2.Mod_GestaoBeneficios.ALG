algoritmo "GestaoFeriasBeneficios"
var
   nome: vetor[1..100] de caractere
   dias, codigo: vetor[1..100] de inteiro
   data: vetor[1..100] de caractere
   opcao: inteiro
   numeroSolicitacoes : inteiro

inicio
   numeroSolicitacoes <- 1
   repita
      escreval("========== DESTINO CERTO ===========")
      escreval("")
      escreval("------------------------------------")
      escreval(" SISTEMA DE GESTÃO")
      escreval("------------------------------------")
      escreval("1. Solicitar férias")
      escreval("2. Aprovar férias")
      escreval("3. Calcular benefícios")
      escreval("4. Sair")
      escreval("------------------------------------")
      escreval("Escolha uma opção: ")
      leia(opcao)

      limpatela

      escolha opcao
      caso 1
         escreval("---------------------------------")
         escreval("SOLICITAR FÉRIAS")
         escreval("---------------------------------")
         escreval("Digite seu nome: ")
         leia(nome[numeroSolicitacoes])
         escreval("Quantos dias de férias? ")
         leia(dias[numeroSolicitacoes])
         escreval("Data pretendida (DD/MM): ")
         leia(data[numeroSolicitacoes])
         codigo[numeroSolicitacoes] <- numeroSolicitacoes + 1000
         limpatela
         escreval("Solicitação criada! Código: ", codigo[numeroSolicitacoes])
         escreval("---------------------------------")
         numeroSolicitacoes <- numeroSolicitacoes + 1
      caso 2
         escreval("---------------------------------")
         escreval("APROVAR FÉRIAS")
         escreval("---------------------------------")
         escreval("Digite o código da solicitação: ")
         leia(codigo[numeroSolicitacoes])
         escreval("1. Aprovar")
         escreval("2. Reprovar")
         escreval("Escolha: ")
         leia(opcao)
         limpatela
         se opcao = 1 entao
            escreval("Férias aprovadas!")
         senao
            escreval("Férias reprovadas.")
         fimse

      caso 3
         escreval("---------------------------------")
         escreval("CALCULAR BENEFÍCIOS")
         escreval("---------------------------------")
         escreval("Digite seu salário: ")
         leia(dias[numeroSolicitacoes])
         escreval("Vale-alimentação: R$", dias[numeroSolicitacoes] * 0.1)
         escreval("Vale-transporte: R$", dias[numeroSolicitacoes] * 0.06)

      caso 4
         escreval("Saindo...")
      outrocaso
         escreval("Opção inválida!")
      fimescolha
   ate opcao = 5
fimalgoritmo