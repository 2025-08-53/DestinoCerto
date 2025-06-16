Algoritmo "Modulo financeiro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Hudson
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : joao vitor lino teixeira
// Data atual  : 21/05/2025
  // Seção de Declarações das variáveis
 VAR
   // Controle Geral
   opcaoMenu, opcaoPagamento, opcaoControle, opcaoRelatorio, i: inteiro

   // Compras
   nomeCompra: vetor[1..10] de caractere
   valorCompra: vetor[1..10] de real
   totalCompra: inteiro
   totalValorCompra: real

   // Pagamentos
   nomePagamento: vetor[1..10] de caractere
   valorPagamento: vetor[1..10] de real
   totalPagamento: inteiro
   totalValorPagamento: real

   // Caixa
   entradasCaixa, saidasCaixa: real
   valorTemp: real

Inicio
   totalCompra <- 0
   totalPagamento <- 0
   totalValorCompra <- 0
   totalValorPagamento <- 0
   entradasCaixa <- 0
   saidasCaixa <- 0

   // Menu Principal
   repita
      limpatela
      escreval("=============== Destino Certo ==================")
      escreval("")
      escreval("============ Menu Principal ===============")
      escreval("1 - Área de Pagamento")
      escreval("2 - Controle de Caixa")
      escreval("3 - Relatórios Financeiros")
      escreval("0 - Sair")
      escreval("===========================================")
      escreva("Escolha sua opção: ")
      leia(opcaoMenu)

      // Área de pagamento
      se opcaoMenu = 1 entao
         repita
            limpatela
            escreval("============ Menu de Pagamento ===============")
            escreval("1 - Registrar Compras")
            escreval("2 - Listar Compras")
            escreval("3 - Registrar Pagamentos")
            escreval("4 - Listar Pagamentos")
            escreval("5 - Saldo")
            escreval("0 - Voltar ao Menu")
            escreval("==============================================")
            escreva("Escolha sua opção: ")
            leia(opcaoPagamento)

            // Registrar compras
            se opcaoPagamento = 1 entao
               limpatela
               se totalCompra < 10 entao
                  totalCompra <- totalCompra + 1
                  escreval("Digite a letra da compra (ex: C): ")
                  leia(nomeCompra[totalCompra])
                  escreval("Digite o valor da compra:")
                  leia(valorCompra[totalCompra])
                  totalValorCompra <- totalValorCompra + valorCompra[totalCompra]
                  escreval("Compra registrada com sucesso!")
               senao
                  escreval("Limite de compras atingido.")
               fimse
               escreval("Pressione ENTER para continuar...")
               leia(opcaoControle)
            fimse

            // Listar compras
            se opcaoPagamento = 2 entao
               limpatela
               escreval("=== Lista de Compras ===")
               se totalCompra = 0 entao
                  escreval("Nenhuma compra registrada.")
               senao
                  para i de 1 ate totalCompra faca
                     escreval(i, ". ", nomeCompra[i], " - R$ ", valorCompra[i]:2:2)
                  fimpara
               fimse
               escreval("Pressione ENTER para continuar...")
               leia(opcaoControle)
            fimse

            // Registrar pagamentos
            se opcaoPagamento = 3 entao
               limpatela
               se totalPagamento < 10 entao
                  totalPagamento <- totalPagamento + 1
                  escreval("Digite a letra do pagamento (ex: P):")
                  leia(nomePagamento[totalPagamento])
                  escreval("Digite o valor do pagamento:")
                  leia(valorPagamento[totalPagamento])
                  totalValorPagamento <- totalValorPagamento + valorPagamento[totalPagamento]
                  escreval("Pagamento registrado com sucesso!")
               senao
                  escreval("Limite de pagamentos atingido.")
               fimse
               escreval("Pressione ENTER para continuar...")
               leia(opcaoControle)
            fimse

            // Listar pagamentos
            se opcaoPagamento = 4 entao
               limpatela
               escreval("=== Lista de Pagamentos ===")
               se totalPagamento = 0 entao
                  escreval("Nenhum pagamento registrado.")
               senao
                  para i de 1 ate totalPagamento faca
                     escreval(i, ". ", nomePagamento[i], " - R$ ", valorPagamento[i]:2:2)
                  fimpara
               fimse
               escreval("Pressione ENTER para continuar...")
               leia(opcaoControle)
            fimse

            // Saldo
            se opcaoPagamento = 5 entao
               limpatela
               escreval("Saldo Financeiro: R$ ", (totalValorPagamento - totalValorCompra):2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoControle)
            fimse

         ate opcaoPagamento = 0
      fimse

      // Controle de Caixa
      se opcaoMenu = 2 entao
         repita
            limpatela
            escreval("=========== Menu de Controle de Caixa ===========")
            escreval("1 - Registrar Entrada")
            escreval("2 - Registrar Saída")
            escreval("3 - Exibir Saldo do Caixa")
            escreval("0 - Voltar ao Menu Principal")
            escreval("=================================================")
            escreva("Escolha sua opção: ")
            leia(opcaoControle)

            // Registrar entrada
            se opcaoControle = 1 entao
               limpatela
               escreva("Digite o valor da entrada: ")
               leia(valorTemp)
               entradasCaixa <- entradasCaixa + valorTemp
               escreval("Entrada registrada com sucesso!")
               escreval("Pressione ENTER para continuar...")
               leia(opcaoRelatorio)
            fimse

            // Registrar saída
            se opcaoControle = 2 entao
               limpatela
               escreva("Digite o valor da saída: ")
               leia(valorTemp)
               saidasCaixa <- saidasCaixa + valorTemp
               escreval("Saída registrada com sucesso!")
               escreval("Pressione ENTER para continuar...")
               leia(opcaoRelatorio)
            fimse

            // Exibir saldo
            se opcaoControle = 3 entao
               limpatela
               escreval("Saldo atual do Caixa: R$ ", (entradasCaixa - saidasCaixa):2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoRelatorio)
            fimse

         ate opcaoControle = 0
      fimse

      // Relatórios Financeiros
      se opcaoMenu = 3 entao
         repita
            limpatela
            escreval("=========== Menu de Relatório Financeiro ===========")
            escreval("1 - Total de Compras")
            escreval("2 - Total de Pagamentos")
            escreval("3 - Total Entradas no Caixa")
            escreval("4 - Total Saídas do Caixa")
            escreval("5 - Relatório Geral")
            escreval("0 - Voltar ao Menu")
            escreval("=====================================================")
            escreva("Escolha sua opção: ")
            leia(opcaoRelatorio)

            se opcaoRelatorio = 1 entao
               limpatela
               escreval("Total de Compras: R$ ", totalValorCompra:2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoPagamento)
            fimse

            se opcaoRelatorio = 2 entao
               limpatela
               escreval("Total de Pagamentos: R$ ", totalValorPagamento:2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoPagamento)
            fimse

            se opcaoRelatorio = 3 entao
               limpatela
               escreval("Entradas no Caixa: R$ ", entradasCaixa:2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoPagamento)
            fimse

            se opcaoRelatorio = 4 entao
               limpatela
               escreval("Saídas do Caixa: R$ ", saidasCaixa:2:2)
               escreval("Pressione ENTER para continuar...")
               leia(opcaoPagamento)
            fimse

            se opcaoRelatorio = 5 entao
               limpatela
               escreval("=========== RELATÓRIO GERAL ===========")
               escreval("Compras: R$ ", totalValorCompra:2:2)
               escreval("Pagamentos: R$ ", totalValorPagamento:2:2)
               escreval("Saldo Financeiro: R$ ", (totalValorPagamento - totalValorCompra):2:2)
               escreval("Saldo em Caixa: R$ ", (entradasCaixa - saidasCaixa):2:2)
               escreval("Nota Fiscal Exemplo: #NF123456789")
               escreval("Emitido em: 21/05/2025")
               escreval("=======================================")
               escreval("Pressione ENTER para continuar...")
               leia(opcaoPagamento)
            fimse

         ate opcaoRelatorio = 0
      fimse

   ate opcaoMenu = 0

Fimalgoritmo