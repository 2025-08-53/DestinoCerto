algoritmo "CadastroFuncionarios"
var
   nomes: vetor[1..100] de caractere
   cargos: vetor[1..100] de caractere
   idades: vetor[1..100] de inteiro
   salarios: vetor[1..100] de real
   totalFunc, opcao, i, cod: inteiro
   nomeBusca: caractere
inicio
   totalFunc <- 0

   repita
      escreval("======= DESTINO CERTO ========")
      escreval("")
      escreval("------------------------------")
      escreval("MENU FUNCION�RIOS")
      escreval("------------------------------")
      escreval("1 - Cadastrar funcion�rio")
      escreval("2 - Listar funcion�rios")
      escreval("3 - Buscar por nome")
      escreval("0 - Sair")
      escreval("------------------------------")
      escreva("Escolha uma op��o: ")
      leia(opcao)
      limpatela
      escolha opcao
      caso 1
         escreval("------------------------------")
         escreval("CADASTRAR FUNCIONARIO")
         escreval("------------------------------")
         se totalFunc < 100 entao
            totalFunc <- totalFunc + 1
            escreva("Nome: ")
            leia(nomes[totalFunc])
            escreva("Cargo: ")
            leia(cargos[totalFunc])
            escreva("Idade: ")
            leia(idades[totalFunc])
            escreva("Sal�rio: ")
            leia(salarios[totalFunc])
            escreval("Funcion�rio cadastrado com sucesso!")
            limpatela
         senao
            escreval("Limite de funcion�rios atingido!")
            limpatela
         fimse

      caso 2
         escreval("------------------------------")
         escreval("LISTAR FUNCIONARIO")
         escreval("------------------------------")
         se totalFunc = 0 entao
            escreval("Nenhum funcion�rio cadastrado.")
         senao
            para i de 1 ate totalFunc faca
               escreval("C�digo: ", i)
               escreval("Nome: ", nomes[i])
               escreval("Cargo: ", cargos[i])
               escreval("Idade: ", idades[i])
               escreval("Sal�rio: R$", salarios[i]:2:2)
               escreval("-----------------------------")
            fimpara
         fimse

      caso 3
         escreval("------------------------------")
         escreval("BUSCAR FUNCIONARIO")
         escreval("------------------------------")
         escreva("Digite o nome a buscar: ")
         leia(nomeBusca)
         para i de 1 ate totalFunc faca
            se nomes[i] = nomeBusca entao
               escreval("C�digo: ", i)
               escreval("Nome: ", nomes[i])
               escreval("Cargo: ", cargos[i])
               escreval("Idade: ", idades[i])
               escreval("Sal�rio: R$", salarios[i]:2:2)
               escreval("-----------------------------")
            fimse
         fimpara

      caso 0
         escreval("Encerrando programa...")

      caso contrario
         escreval("Op��o inv�lida.")
      fimescolha

   ate opcao = 0
fimalgoritmo