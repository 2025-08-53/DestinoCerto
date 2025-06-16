algoritmo "Projeto_Master"
var
   opcao, opcao1, opcao2, opcao3: inteiro
   opcaoPromocoes: inteiro
   qntPacotes, qntParcerias, cadastroGeral, escaMotoGui, qntAvaliacoes: inteiro
   codigoPacote, cnpjParcerias,  diasParcerias: vetor[1..3] de inteiro
   metPagamento, NomeEmpresas: vetor[1..3] de caractere
   pacoteTransporte: vetor[1..3] de caractere
   acoespromocionais: vetor[1..3] de caractere
   avaViagem, avaMotorista, avaGuia, avaTransporte, cadClientes, cadMotorista, cadVeiculo, motoNome, motoHorarioEntrada, motoHorarioSaida, guiaNome, guiaHorarioEntrada, guiaHorarioSaida: vetor[1..3] de caractere

   i: inteiro
   teste: caractere



inicio
qntPacotes <- 0
qntParcerias <- 0
cadastroGeral <- 0
escaMotoGui <- 0
qntAvaliacoes <- 0

   repita
      escreval("========== MENU ==========")
      escreval("0 - Para cancelar a ação")
      Escreval("1 - Escala de operações")
      Escreval("2 - Gestão de Parcerias e Promoções")
      Escreval("3 - Business Intelligence")
      escreva("Escolha a opção que deseja entrar: ")
      leia(opcao)
          escolha opcao
              caso 1
               limpatela
               repita
                  escreval("============= MENU de Escalas de Operações ================")
                  escreval("0 - Para voltar ao menu principal")
                  escreval("1 - Controle de transfers e passeios programados ")
                  escreval("2 - Escalonamento de motoristas e guias")
                  escreval("3 - Emissão de itinerários")
                  escreva("Digite sua opção: ")
                  leia(opcao1)
                       escolha opcao1
                              caso 1
                                    Escreval("===== Controle Geral =====")
                                    cadastroGeral <- cadastroGeral + 1
                                      limpatela
                                       escreval("Cadastro do clientes: ")
                                       leia(cadClientes[cadastroGeral])
                                       escreval("Cadastro de Motorista: ")
                                       leia(cadMotorista[cadastroGeral])
                                       escreval("Cadastro de Veiculo: ")
                                       leia(cadVeiculo[cadastroGeral])
                                       escreval("Cadastro criado com sucesso!.")
                              caso 2

                              Escreval("===== Escalonamento =====")
                                    escaMotoGui <- escaMotoGui + 1
                                      limpatela
                                      Escreval("===== Escalonamento do motorista =====")
                                       escreval("Nome do motorista: ")
                                       leia(motoNome[escaMotoGui])
                                       escreval("Horario de entrada do motorista: ")
                                       leia(motoHorarioEntrada[escaMotoGui])
                                       escreval("Horario de saida do motorista: ")
                                       leia(motoHorarioSaida[escaMotoGui])
                                       limpatela
                                      Escreval("===== Escalonamento do Guia =====")
                                       escreval("Nome do Guia: ")
                                       leia(guiaNome[escaMotoGui])
                                       escreval("Horario de entrada do Guia: ")
                                       leia(guiaHorarioEntrada[escaMotoGui])
                                       escreval("Horario de saida do Guia: ")
                                       leia(guiaHorarioSaida[escaMotoGui])
                                       escreval("Cadastro criado com sucesso!.")
                              caso 3
                              se escaMotoGui = 0 entao
                                   escreval("Nenhuma informação foi inserida!!")
                                   escreval("")
                                senao
                                   para i de 1 ate escaMotoGui faca
                                        escreval("======== Escalonamento geral ==========")
                                        escreval(" ")
                                        escreval("======== Motorista ==========")
                                       Escreval("Escalonamento motorista", i, ": ")
                                       Escreval("nome do Motorista: ", motoNome[i])
                                       Escreval("Horario de saida do motorista: ", motoHorarioEntrada[i])
                                       Escreval("Horario de entrada do motorista: ", motoHorarioSaida[i])
                                       escreval("======== Guia ==========")
                                       Escreval("Escalonamento guia", i, ": ")
                                       Escreval("nome do Guia: ", guiaNome[i])
                                       Escreval("Horario de saida do Guia: ", guiaHorarioEntrada[i])
                                       Escreval("Horario de entrada do Guia: ", guiaHorarioSaida[i])

                                       leia(teste)
                                   fimpara
                                   limpatela
                                fimse
                       fimescolha

               ate opcao1 = 0
                  Escreval("Saiu do Primeiro menu")
                //fim do caso 1

                //inicio do caso 2
               caso 2
                  limpatela
                  repita
                       escreval("========= MENU de Gestão de Parcerias e Promoções =============")
                       escreval("0 - Para voltar ao menu principal")
                       escreval("1- Adicionar Promoções")
                       escreval("2- Gestão de parcerias")
                       escreval("3- lista do andamento de ações promocionais")
                       escreva("Digite sua opção: ")
                       leia(opcao2)
                       limpatela
                            escolha opcao2
                              caso 1
                                 qntPacotes <- qntPacotes + 1
                                 limpatela
                                    escreval("Digite o código do pacote da promoção: ")
                                    leia(codigoPacote[qntPacotes])
                                    escreval("Metodos de pagamento: ")
                                    leia(metPagamento[qntPacotes])
                                    escreval("Pacotes de transportes: ")
                                    leia(pacoteTransporte[qntPacotes])
                                    escreval("Promoção criada.")

                              caso 2
                                  qntParcerias <- qntParcerias + 1
                                  limpatela
                                  escreval("Digite o nome da empresa: ")
                                    leia(NomeEmpresas[qntParcerias])
                                    escreval("Digite o CNPJ: ")
                                    leia(cnpjParcerias[qntParcerias])
                                    escreval("Digite os dias de duração da parceria: ")
                                    Escreva("dias: ")
                                    leia(diasParcerias[qntParcerias])
                                    escreval("Parceria criada.")

                              caso 3
                                limpatela
                                escreval("============ lista de ações promocionais ============")
                                se qntPacotes = 0 entao
                                   escreval("Nenhuma informação inserida!!")
                                   escreval("")
                                senao
                                   para i de 1 ate qntPacotes faca
                                        escreval("----------------------------")
                                       Escreval("Consulta", i, ": ")
                                       Escreval("Codigo: ", codigoPacote[i])
                                       Escreval("Metodo de pagamento: ", metPagamento[i])
                                       Escreval("Pacote de transporte: ", pacoteTransporte[i])
                                       leia(teste)
                                   fimpara
                                   limpatela
                                fimse


                            fimescolha
                   ate opcao2 = 0
                      Escreval("Saiu do Segundo menu")
               //fim do caso 2

               caso 3
                  limpatela
                  repita
                       escreval("============== MENU de Business Intelligence (BI) =============")
                       escreval("0 - Para voltar ao menu principal")
                       escreval("1- Coleta e exibição de dados de vendas por destino")
                       escreval("2- Relatório de desempenho por período")
                       escreva("Digite sua opção: ")
                       leia(opcao3)
                       escolha opcao3
                              caso 1
                              qntAvaliacoes <- qntAvaliacoes + 1
                                 limpatela
                                 escreval("============ Coleta de dados de vendas ============")
                                    escreval("Digite a sua avaliação da viagem: ")
                                    leia(avaViagem[qntAvaliacoes])
                                    escreval("Digite a sua avaliação do motorista: ")
                                    leia(avaMotorista[qntAvaliacoes])
                                    escreval("Digite a sua avaliação do guia: ")
                                    leia(avaGuia[qntAvaliacoes])
                                    escreval("Digite a sua avaliação do meio de trasnporte: ")
                                    leia(avaTransporte[qntAvaliacoes])
                              caso 2
                                   se qntAvaliacoes = 0 entao
                                   escreval("Nenhuma informação foi inserida!!")
                                   escreval(" ")
                                senao
                                   para i de 1 ate qntAvaliacoes faca
                                        escreval("======== Avaliações gerais ==========")
                                        escreval(" ")
                                       Escreval("Numero da avaliação", i, ": ")
                                       escreval("Avaliação da viagem: ", avaViagem[i])
                                       Escreval("Avaliação do Motorista: ", avaMotorista[i])
                                       Escreval("Avaliação do Guia: ", avaGuia[i])
                                       Escreval("Avaliação do transporte: ", avaTransporte[i])
                                       leia(teste)
                                   fimpara
                                   limpatela
                                fimse
                       fimescolha
                       
                  ate opcao3 = 0
                  //fim do caso 3
                   outrocaso
                       escreval("Opção invalida. Tente novamente")

          fimescolha

     ate opcao = 0
         escreval("Obrigado por usar o sistema.")
fimalgoritmo