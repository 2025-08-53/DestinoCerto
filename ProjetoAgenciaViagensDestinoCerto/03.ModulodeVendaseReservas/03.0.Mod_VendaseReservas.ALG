Algoritmo "Destino Certo"

Var
   cGeral, cCadastrar, cConsulta, cComprar, cPagamento: caractere
   cPagamentoUm, cPagamentoDois: caractere
   opcaoMenu, opcaoCadastro, opcaoConsulta, opcaoPacote, opcaoComprar: inteiro
   opcaoComprarUm, opcaoPagamento: inteiro
   i, j, k, l, m, n: inteiro // m adicionado para evitar conflitos

   // Pontos Tur�sticos
   NomeTuristico, EstadoTuristico: vetor[1..100] de caractere
   IdTuristico, AtivoTuristico: vetor[1..100] de inteiro


   // Transportes
   TipoTransporte, Placa: vetor[1..100] de caractere
   Capacidade: vetor[1..100] de inteiro

   // Hospedagens
   IDdoTitular: vetor[1..100] de inteiro
   nomeTitular, Hospedagem, localizacaodaHospedagem: vetor[1..100] de caractere
   quantidadedeQuartos, comodidades, precoPorViagem: vetor[1..100] de caractere

   // Pacotes
   IDPacote: vetor[1..100] de inteiro
   NomePacote, DestinoPacote, HospedagemPacote: vetor[1..100] de caractere
   PrecoPessoaPacote: vetor[1..100] de real

   // Total de cadastros
   totalConsultas, totalTransportes, totalHospedagens, totalPacotes: inteiro
   totalTuristico: inteiro

   // Vari�veis da Compra com pacote cadastrado
   destinoPacoteComprovante, hospedagemPacoteComprovante: vetor[1..100] de caractere
   nomePacoteComprovante: vetor[1..100] de caractere

   dataIda, dataVolta: vetor[1..100] de caractere
   transporteEscolhido: vetor[1..100] de caractere
   qtdAdultos, qtdAdolescentes, qtdCriancas: vetor[1..100] de inteiro

   nomePassageiro, telefonePassageiro, emailPassageiro: vetor[1..100] de caractere
   formaPagamento: vetor[1..100] de caractere
   situacaoPagamento: vetor[1..100] de caractere

   precoComprovante: Real

   sPix, sCartaoC, sCartaoD: inteiro

   numCartaoD, proprietarioCartaoD, validadeCartaoD, segurancaCartaoD: vetor[1..100] de caractere
   numCartaoC, proprietarioCartaoC, validadeCartaoC, segurancaCartaoC: vetor[1..100] de caractere

   totalCartaoC, totalCartaoD, totalPix, totalPessoas: inteiro

   valorTotal: real

Inicio
   cGeral <- "s"
   i <- 1 // �ndice para pontos tur�sticos
   j <- 1 // �ndice para transportes
   k <- 1 // �ndice para hospedagens
   l <- 1 // �ndice para pacotes
   n <- 1 // �ndice para registrar comprovante
   totalTuristico <- 0
   totalConsultas <- 1
   totalTransportes <- 0
   totalHospedagens <- 0
   totalPacotes <- 0
   totalCartaoC <- 0
   totalCartaoD <- 0
   totalPix <- 0

   Enquanto (cGeral = "s") ou (cGeral = "S") faca
      escreval("===========  Destino Certo  ===============")
      escreval("")
      escreval("======== Menu de Vendas e Reservas ========")
      escreval("1 - Cadastros")
      escreval("2 - Consultas")
      escreval("3 - Comprar")
      escreval("4 - Sair")
      escreva("Escolha uma op��o: ")
      leia(opcaoMenu)

      limpatela

      escolha opcaoMenu
         caso 1
            cCadastrar <- "s"
            Enquanto (cCadastrar = "s") ou (cCadastrar = "S") faca
               escreval("-------------------------------------------")
               escreval("======= Menu de Cadastros =======")
               escreval("1 - Cadastrar Pontos Tur�sticos")
               escreval("2 - Cadastrar Transportes")
               escreval("3 - Cadastrar Hospedagem")
               escreval("4 - Cadastrar Pacotes")
               escreval("5 - Voltar")
               escreva("Escolha uma op��o: ")
               leia(opcaoCadastro)

               limpatela

               escolha opcaoCadastro
                  caso 1
                     totalTuristico <- totalTuristico + 1
                     escreval("-------------------------------------------")
                     escreval("==== Cadastro de Ponto Tur�stico ====")
                     escreva("Digite o ID do ponto tur�stico: ")
                     leia(IdTuristico[i])
                     escreva("Digite o nome do ponto tur�stico: ")
                     leia(NomeTuristico[i])
                     escreva("Digite o Estado/UF do ponto tur�stico: ")
                     leia(EstadoTuristico[i])
                     i <- i + 1

                     limpatela

                  caso 2
                     totalTransportes <- totalTransportes + 1
                     escreval("-------------------------------------------")
                     escreval("==== Cadastro de Transporte ====")
                     escreva("Digite o tipo de transporte: ")
                     leia(TipoTransporte[j])
                     escreva("Digite a capacidade do transporte: ")
                     leia(Capacidade[j])
                     escreva("Digite o c�digo do transporte: ")
                     leia(Placa[j])
                     escreval("Transporte cadastrado com sucesso.")
                     j <- j + 1

                     limpatela

                  caso 3
                     totalHospedagens <- totalHospedagens + 1
                     escreval("-------------------------------------------")
                     escreval("==== Cadastro de Hospedagem ====")
                     escreva("Digite o ID do Titular: ")
                     leia(IDdoTitular[k])
                     escreva("Digite o nome do Titular: ")
                     leia(nomeTitular[k])
                     escreva("Digite a Hospedagem: ")
                     leia(Hospedagem[k])
                     escreva("Digite a localiza��o da hospedagem: ")
                     leia(localizacaodaHospedagem[k])
                     escreva("Digite a quantidade de quartos: ")
                     leia(quantidadedeQuartos[k])
                     escreva("Digite as comodidades: ")
                     leia(comodidades[k])
                     escreva("Digite o pre�o por viagem: ")
                     leia(precoPorViagem[k])
                     escreval("Hospedagem cadastrada com sucesso.")
                     k <- k + 1

                     limpatela

                  caso 4
                     totalPacotes <- totalPacotes + 1
                     escreval("-------------------------------------------")
                     escreval("==== Cadastro de Pacote ====")
                     escreva("Digite o ID do Pacote: ")
                     leia(IDPacote[l])
                     escreva("Digite o Nome do Pacote: ")
                     leia(NomePacote[l])
                     escreva("Digite o Destino do Pacote: ")
                     leia(DestinoPacote[l])
                     escreval("Escolha uma hospedagem para o pacote:")

                     para m de 1 ate totalHospedagens faca
                        escreval(m, " - ", Hospedagem[m])
                     fimpara
                     escreva("Digite o n�mero da hospedagem desejada: ")
                     leia(opcaoPacote)
                     HospedagemPacote[l] <- Hospedagem[m]

                     escreva("Digite o pre�o por pessoa do pacote: ")
                     leia(PrecoPessoaPacote[l])
                     l <- l + 1

                     limpatela

                  caso 5
                     cCadastrar <- "n"
                  outrocaso
                     escreval("-------------------------------------------")
                     escreval("Op��o inv�lida. Tente novamente.")
               fimescolha
            fimenquanto

         caso 2
            cConsulta <- "s"
            Enquanto (cConsulta = "s") ou (cConsulta = "S") faca
               escreval("-------------------------------------------")
               escreval("======= Menu de Consultas =======")
               escreval("1 - Consultar Hospedagens")
               escreval("2 - Consultar Pontos Tur�sticos")
               escreval("3 - Consultar Transportes")
               escreval("4 - Consultar Pacotes")
               escreval("5 - Consultar Comprovante de Compra")
               escreval("6 - Voltar")
               escreva("Escolha uma op��o: ")
               leia(opcaoConsulta)

               limpatela

               escolha opcaoConsulta
                  caso 1
                     escreval("-------------------------------------------")
                     escreval("========= Consulta de Hospedagens =========")
                     para m de 1 ate totalHospedagens faca
                        escreval("ID do Titular: ", IDdoTitular[m])
                        escreval("Nome: ", nomeTitular[m])
                        escreval("Hospedagem: ", Hospedagem[m])
                        escreval("Localiza��o: ", localizacaodaHospedagem[m])
                        escreval("Quartos: ", quantidadedeQuartos[m])
                        escreval("Comodidades: ", comodidades[m])
                        escreval("Pre�o por viagem: ", precoPorViagem[m])
                     fimpara

                  caso 2
                     escreval("-------------------------------------------")
                     escreval("====== Consulta de Pontos Tur�sticos ======")
                     se totalTuristico = 0 entao
                        escreval("----------------------------------------")
                        escreval("Nenhum ponto tur�stico cadastrado.")
                        escreval("----------------------------------------")
                     senao
                        para m de 1 ate totalTuristico faca
                           escreval("ID: ", IdTuristico[m])
                           escreval("Nome: ", NomeTuristico[m])
                           escreval("Estado: ", EstadoTuristico[m])
                        fimpara
                     fimse

                  caso 3
                     escreval("-------------------------------------------")
                     escreval("========= Consulta de Transportes =========")
                     se totalTransportes = 0 entao
                        escreval("----------------------------------------")
                        escreval("Nenhum transporte cadastrado.")
                        escreval("----------------------------------------")
                     senao
                        para m de 1 ate totalTransportes faca
                           escreval("Tipo: ", TipoTransporte[m])
                           escreval("Capacidade: ", Capacidade[m])
                           escreval("C�digo: ", Placa[m])
                        fimpara
                     fimse

                  caso 4
                     escreval("-------------------------------------------")
                     escreval("========= Consulta de pacotes =========")
                     se totalPacotes = 0 entao
                        escreval("----------------------------------------")
                        escreval("Nenhum pacote cadastrado.")
                        escreval("----------------------------------------")
                     senao
                        para m de 1 ate totalPacotes faca
                           escreval("ID: ", IDPacote[m])
                           escreval("Nome do Pacote: ", NomePacote[m])
                           escreval("Destino do Pacote: ", DestinoPacote[m])
                           escreval("Hospedagem: ", HospedagemPacote[m])
                           escreval("Pre�o por pessoa: ", PrecoPessoaPacote[m])
                        fimpara
                     fimse

                  caso 5
                     escreval("-------------------------------------------")
                     escreval("=== Consulta de Comprovante de Compra ===")
                     se totalPix = 0 entao
                        escreval("Ainda n�o h� registrado reservas no sistema.")
                     senao
                        para n de 1 ate totalPix faca
                            escreval("Pagamento Realizado!")
                            escreval("Pacote: ", nomePacoteComprovante[n])
                            escreval("=== Quantidade de pessoas ===")
                            escreval("Quantidade de Adultos: ", qtdAdultos[n])
                            escreval("Quantidade de Adolescentes: ", qtdAdolescentes[n])
                            escreval("Quantidade de Crian�as: ", qtdCriancas[n])
                            escreval("Data de Ida: ", dataIda[n])
                            escreval("Data de Volta: ", dataVolta[n])
                            escreval("Situa��o do Pagamento: ", situacaoPagamento[n])
                        fimpara

                     fimse

                  caso 6
                     cConsulta <- "n"
                  outrocaso
                     escreval("-------------------------------------------")
                     escreval("Op��o inv�lida. Tente novamente.")
               fimescolha
            fimenquanto

         caso 3
            cComprar <- "s"
            Enquanto (cComprar = "s") ou (cComprar = "S") faca
               escreval("-------------------------------------------")
               escreval("======= Menu de Compras =======")
               escreval("1 - Pacotes Montados")
               escreval("2 - Montar Viagem")
               escreval("3 - Voltar")
               escreval("Escolha uma op��o: ")
               leia(opcaoComprar)

               limpatela

               escolha opcaoComprar
                  caso 1
                     escreval("-------------------------------------------")
                     escreval("Escolha seu pacote")
                     escreval("1 - Escolha seu pacote")
                     escreval("2 - Voltar")
                     leia(opcaoComprarUm)
                     escolha opcaoComprarUm
                        caso 1
                           escreval("-------------------------------------------")
                           // Escolha de pacote
                           para m de 1 ate totalPacotes faca
                              escreval(m, " - ", nomePacote[m])
                              escreval("    Destino: ", destinoPacote[m])
                              escreval("    Hospedagem: ", hospedagemPacote[m])
                              escreval("    Pre�o do Pacote: ", PrecoPessoaPacote[m])
                           fimpara
                           escreva("Digite o n�mero do Pacote desejado: ")
                           leia(opcaoPacote)
                           nomePacoteComprovante[n] <- nomePacote[m]
                           destinoPacoteComprovante[n] <- destinoPacote[m]
                           hospedagemPacoteComprovante[n] <- hospedagemPacote[m]

                           //escolha de data de ida e volta
                           escreval("Digite a data de ida (dd/mm/aaaa): ")
                           leia(dataIda[n])
                           escreval("Digite a data de volta (dd/mm/aaa): )")
                           leia(dataVolta[n])
                           
                           // Informar Pre�o por pessoa
                           escreva("Digite o pre�o por pessoa da viagem: R$ ")
                           leia(PrecoPessoaPacote[n])
                           
                           //escolha de quantidade de pessoas
                           escreval("=== Quantidade de pessoas ===")
                           escreval("Quantidade de Adultos: ")
                           leia(qtdAdultos[n])
                           escreval("Quantidade de Adolescentes: ")
                           leia(qtdAdolescentes[n])
                           escreval("Quantidade de Crian�as: ")
                           leia(qtdCriancas[n])
                           //cadastro de pessoas, com nome, telefone, e email

                           //c�lculo de quantidade de pessoas e valor total
                           // C�lculo do valor total com base na quantidade de pessoas
                           totalPessoas <- qtdAdultos[n] + qtdAdolescentes[n] + qtdCriancas[n]
                           valorTotal <- totalPessoas * PrecoPessoaPacote[n]

                           escreval("=== Cadastro do respons�vel pela compra ===")
                           escreva("Nome: ")
                           leia(nomePassageiro[n])
                           escreva("Telefone: ")
                           leia(telefonePassageiro[n])
                           escreva("E-mail: ")
                           leia(emailPassageiro[n])
                           // loop para manter o usu�rio dentro do menu de forma de pagamento
                           repita
                              escreval("=== Forma de Pagamento ===")
                              escreval("1 - Pix")
                              escreval("2 - Cart�o de D�bito")
                              escreval("3 - Cart�o de Cr�dito")
                              escreval("4 - Voltar")
                              escreva("Escolha uma op��o: ")
                              leia(opcaoPagamento)

                              escolha opcaoPagamento
                                 caso 1
                                    totalPix <- totalPix + 1
                                    escreval("Valor total do pacote: R$ ", valorTotal)
                                    escreval("Chave Pix: destinocerto@agencia.com.br")
                                    formaPagamento[n] <- "Pix"
                                    situacaoPagamento[n] <- "Pagamento Realizado com pix"
                                    // Encerra o loop ap�s uma escolha v�lida
                                    opcaoPagamento <- 0
                                 caso 2
                                    totalPix <- totalPix + 1
                                    escreva("N�mero do Cart�o de D�bito: ")
                                    leia(numCartaoD[n])
                                    escreva("Propriet�rio: ")
                                    leia(proprietarioCartaoD[n])
                                    escreva("Validade (MM/AA): ")
                                    leia(validadeCartaoD[n])
                                    escreva("C�digo de Seguran�a: ")
                                    leia(segurancaCartaoD[n])
                                    formaPagamento[n] <- "Cart�o de D�bito"
                                    situacaoPagamento[n] <- "Pagamento Relizado com Cart�o de D�bito"
                                    opcaoPagamento <- 0
                                 caso 3
                                    totalPix <- totalPix + 1
                                    escreva("N�mero do Cart�o de Cr�dito: ")
                                    leia(numCartoC[n])
                                    escreva("Propriet�rio: ")
                                    leia(proprietarioCartaoC[n])
                                    escreva("Validade (MM/AA): ")
                                    leia(validadeCartaoC[n])
                                    escreva("C�digo de Seguran�a: ")
                                    leia(segurancaCartaoC[n])
                                    formaPagamento[n] <- "Cart�o de Cr�dito"
                                    situacaoPagamento[n] <- "Pagamento Realizado com cart�o de Cr�dito"
                                    opcaoPagamento <- 0
                                 caso 4
                                    escreval("-------------------------------------------")
                                    escreval("Voltando para a sele��o anterior.")
                                 outrocaso
                                    escreval("-------------------------------------------")
                                    escreval("Op��o inv�lida. Tente novamente.")
                              fimescolha
                           ate (opcaoPagamento = 0) // Sai do menu ap�s escolher uma forma de pagamento

                           escreval("Reserva de pacote Conclu�da.")


                        caso 2

                        outrocaso
                           escreval("-------------------------------------------")
                           escreval("Op��o Inv�lida. Tente novamente.")
                     fimescolha

                     limpatela

                  caso 2
                     escreval("-------------------------------------------")
                     escreval("======= Montar Viagem Personalizada =======")

                     // Escolha de Ponto Tur�stico
                     escreval("Escolha um ponto tur�stico:")
                     para m de 1 ate totalTuristico faca
                        escreval(m, " - ", NomeTuristico[m], " (", EstadoTuristico[m], ")")
                     fimpara
                     escreva("Digite o n�mero do ponto tur�stico desejado: ")
                     leia(opcaoPacote)
                     destinoPacoteComprovante[n] <- NomeTuristico[opcaoPacote]

                     // Escolha de Hospedagem
                     escreval("Escolha uma hospedagem:")
                     para m de 1 ate totalHospedagens faca
                        escreval(m, " - ", Hospedagem[m], " (", localizacaodaHospedagem[m], ")")
                     fimpara
                     escreva("Digite o n�mero da hospedagem desejada: ")
                     leia(opcaoPacote)
                     hospedagemPacoteComprovante[n] <- Hospedagem[opcaoPacote]

                     // Escolha de Transporte
                     escreval("Escolha um transporte:")
                     para m de 1 ate totalTransportes faca
                        escreval(m, " - ", TipoTransporte[m], " (Capacidade: ", Capacidade[m], ")")
                     fimpara
                     escreva("Digite o n�mero do transporte desejado: ")
                     leia(opcaoPacote)
                     transporteEscolhido[n] <- TipoTransporte[opcaoPacote]

                     // Informar Pre�o por pessoa
                     escreva("Digite o pre�o por pessoa da viagem: R$ ")
                     leia(PrecoPessoaPacote[n]) // mesmo vetor usado em pacotes

                     // Escolha de datas
                     escreva("Digite a data de ida (dd/mm/aaaa): ")
                     leia(dataIda[n])
                     escreva("Digite a data de volta (dd/mm/aaaa): ")
                     leia(dataVolta[n])

                     // Quantidade de pessoas
                     escreva("Quantidade de adultos: ")
                     leia(qtdAdultos[n])
                     escreva("Quantidade de adolescentes: ")
                     leia(qtdAdolescentes[n])
                     escreva("Quantidade de crian�as: ")
                     leia(qtdCriancas[n])

                     totalPessoas <- qtdAdultos[n] + qtdAdolescentes[n] + qtdCriancas[n]
                     valorTotal <- totalPessoas * PrecoPessoaPacote[n]

                     // Cadastro do passageiro respons�vel
                     escreval("=== Cadastro do respons�vel pela compra ===")
                     escreva("Nome: ")
                     leia(nomePassageiro[n])
                     escreva("Telefone: ")
                     leia(telefonePassageiro[n])
                     escreva("E-mail: ")
                     leia(emailPassageiro[n])

                     // Menu de pagamento
                     repita
                        escreval("=== Forma de Pagamento ===")
                        escreval("1 - Pix")
                        escreval("2 - Cart�o de D�bito")
                        escreval("3 - Cart�o de Cr�dito")
                        escreval("4 - Voltar")
                        escreva("Escolha uma op��o: ")
                        leia(opcaoPagamento)

                        escolha opcaoPagamento
                           caso 1
                              totalPix <- totalPix + 1
                              escreval("Valor total da viagem: R$ ", valorTotal)
                              escreval("Chave Pix: destinocerto@agencia.com.br")
                              formaPagamento[n] <- "Pix"
                              situacaoPagamento[n] <- "Pagamento realizado com Pix"
                              opcaoPagamento <- 0
                           caso 2
                              totalCartaoD <- totalCartaoD + 1
                              escreva("N�mero do Cart�o de D�bito: ")
                              leia(numCartaoD[n])
                              escreva("Propriet�rio: ")
                              leia(proprietarioCartaoD[n])
                              escreva("Validade (MM/AA): ")
                              leia(validadeCartaoD[n])
                              escreva("C�digo de Seguran�a: ")
                              leia(segurancaCartaoD[n])
                              formaPagamento[n] <- "Cart�o de D�bito"
                              situacaoPagamento[n] <- "Pagamento realizado com Cart�o de D�bito"
                              opcaoPagamento <- 0
                           caso 3
                              totalCartaoC <- totalCartaoC + 1
                              escreva("N�mero do Cart�o de Cr�dito: ")
                              leia(numCartaoC[n])
                              escreva("Propriet�rio: ")
                              leia(proprietarioCartaoC[n])
                              escreva("Validade (MM/AA): ")
                              leia(validadeCartaoC[n])
                              escreva("C�digo de Seguran�a: ")
                              leia(segurancaCartaoC[n])
                              formaPagamento[n] <- "Cart�o de Cr�dito"
                              situacaoPagamento[n] <- "Pagamento realizado com Cart�o de Cr�dito"
                              opcaoPagamento <- 0
                           caso 4
                              escreval("Voltando ao menu anterior...")
                           outrocaso
                              escreval("Op��o inv�lida. Tente novamente.")
                        fimescolha
                     ate opcaoPagamento = 0

                     escreval("Compra conclu�da com sucesso!")
                     nomePacoteComprovante[n] <- "Viagem Personalizada"
                     n <- n + 1
                  caso 3
                     cComprar <- "n"
                  outrocaso
                     escreval("-------------------------------------------")
                     escreval("Op��o inv�lida. Tente novamente.")
               fimescolha
            fimenquanto
         caso 4
            escreval("Encerrando o sistema...")
            escreval("-------------------------------------------")
            cGeral <- "n"
         outrocaso
            escreval("Op��o inv�lida. Tente novamente.")
            escreval("-------------------------------------------")
      fimescolha
   fimenquanto

Fimalgoritmo