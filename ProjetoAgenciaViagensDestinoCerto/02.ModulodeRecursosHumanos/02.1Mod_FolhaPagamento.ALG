algoritmo "FolhaPagamento"

var
   opcaoMenu: inteiro
   codFunc: vetor[1..10] de inteiro
   nomeFunc: vetor[1..10] de caractere
   salarioBruto: vetor[1..10] de real
   salarioLiquido: vetor[1..10] de real
   faltas: vetor[1..10] de inteiro
   totalFuncionarios: inteiro
   i: inteiro
   codigoBusca: inteiro
   descontoINSS, descontoFaltas: real
   faltasAdicionais: inteiro

inicio
   totalFuncionarios <- 0

   repita
      escreval("======= DESTINO CERTO ========")
      escreval("")
      escreval("----------------------------------")
      escreval("MENU FUNCION�RIOS")
      escreval("----------------------------------")
      escreval("1. Registrar funcion�rio")
      escreval("2. Registrar Faltas")
      escreval("3. Ver Holerite")
      escreval("4. Sair")
      escreva("Escolha uma op��o: ")
      leia(opcaoMenu)
          limpatela
      escolha opcaoMenu

         // 1. Registrar funcion�rio
      caso 1
         escreval("----------------------------------")
         escreval("Registrar funcion�rio")
         escreval("----------------------------------")
         se totalFuncionarios < 10 entao
            totalFuncionarios <- totalFuncionarios + 1
            i <- totalFuncionarios

            escreva("C�digo do funcion�rio: ")
            leia(codFunc[i])
            escreva("Nome do funcion�rio: ")
            leia(nomeFunc[i])
            escreva("Sal�rio bruto: ")
            leia(salarioBruto[i])
            limpatela

            faltas[i] <- 0
            salarioLiquido[i] <- 0
            escreval("Funcion�rio registrado com sucesso!")
         senao
            escreval("Limite de funcion�rios atingido!")
         fimse

         // 2. Registrar faltas
      caso 2
         escreval("----------------------------------")
         escreval("Registrar faltas")
         escreval("----------------------------------")
         escreva("Informe o c�digo do funcion�rio: ")
         leia(codigoBusca)

         para i de 1 ate totalFuncionarios faca
            se codFunc[i] = codigoBusca entao
               escreva("Quantas faltas deseja adicionar? ")
               leia(faltasAdicionais)
               faltas[i] <- faltas[i] + faltasAdicionais
               limpatela
               escreval("Faltas atualizadas: ", faltas[i])
            fimse
         fimpara

         // 3. Ver Holerite
      caso 3
         escreval("----------------------------------")
         escreval("Ver Holerite")
         escreval("----------------------------------")
         escreva("Informe o c�digo do funcion�rio: ")
         leia(codigoBusca)

         para i de 1 ate totalFuncionarios faca
            se codFunc[i] = codigoBusca entao
               // Calcular sal�rio l�quido
               descontoINSS <- salarioBruto[i] * 0.08
               descontoFaltas <- (salarioBruto[i] / 30) * faltas[i]
               salarioLiquido[i] <- salarioBruto[i] - descontoINSS - descontoFaltas

               escreval("------ HOLERITE ------")
               escreval("Nome: ", nomeFunc[i])
               escreval("Sal�rio Bruto: R$ ", salarioBruto[i])
               escreval("Faltas: ", faltas[i])
               escreval("Sal�rio L�quido: R$ ", salarioLiquido[i])
               escreval("Desconto INSS R$ ", descontoINSS)
               escreval("Desconto faltas R$ ", descontoFaltas)
            fimse
         fimpara

         // 4. Sair
      caso 4
         escreval("Encerrando o programa...")
      outrocaso
         escreval("Opcao invalida")
      fimescolha


   ate opcaoMenu = 4

fimalgoritmo
