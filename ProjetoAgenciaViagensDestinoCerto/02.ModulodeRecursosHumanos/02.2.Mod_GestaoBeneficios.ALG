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
      escreval(" SISTEMA DE GEST�O")
      escreval("------------------------------------")
      escreval("1. Solicitar f�rias")
      escreval("2. Aprovar f�rias")
      escreval("3. Calcular benef�cios")
      escreval("4. Sair")
      escreval("------------------------------------")
      escreval("Escolha uma op��o: ")
      leia(opcao)

      limpatela

      escolha opcao
      caso 1
         escreval("---------------------------------")
         escreval("SOLICITAR F�RIAS")
         escreval("---------------------------------")
         escreval("Digite seu nome: ")
         leia(nome[numeroSolicitacoes])
         escreval("Quantos dias de f�rias? ")
         leia(dias[numeroSolicitacoes])
         escreval("Data pretendida (DD/MM): ")
         leia(data[numeroSolicitacoes])
         codigo[numeroSolicitacoes] <- numeroSolicitacoes + 1000
         limpatela
         escreval("Solicita��o criada! C�digo: ", codigo[numeroSolicitacoes])
         escreval("---------------------------------")
         numeroSolicitacoes <- numeroSolicitacoes + 1
      caso 2
         escreval("---------------------------------")
         escreval("APROVAR F�RIAS")
         escreval("---------------------------------")
         escreval("Digite o c�digo da solicita��o: ")
         leia(codigo[numeroSolicitacoes])
         escreval("1. Aprovar")
         escreval("2. Reprovar")
         escreval("Escolha: ")
         leia(opcao)
         limpatela
         se opcao = 1 entao
            escreval("F�rias aprovadas!")
         senao
            escreval("F�rias reprovadas.")
         fimse

      caso 3
         escreval("---------------------------------")
         escreval("CALCULAR BENEF�CIOS")
         escreval("---------------------------------")
         escreval("Digite seu sal�rio: ")
         leia(dias[numeroSolicitacoes])
         escreval("Vale-alimenta��o: R$", dias[numeroSolicitacoes] * 0.1)
         escreval("Vale-transporte: R$", dias[numeroSolicitacoes] * 0.06)

      caso 4
         escreval("Saindo...")
      outrocaso
         escreval("Op��o inv�lida!")
      fimescolha
   ate opcao = 5
fimalgoritmo