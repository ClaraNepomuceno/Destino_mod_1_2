Algoritmo "Módulorecursoshumanos"
Var
   codigo: vetor [1..5] de inteiro
   nome, cargo: vetor [1..5] de caractere
   salario: vetor [1..5] de real
   i, qtdfuncionarios: inteiro
   resposta: caractere
   ferias: inteiro
   menu, opcao: inteiro
   encontrou: logico

Inicio
   qtdfuncionarios <- 0

   repita
      escreval("-----------Menu--------------")
      escreval("1-Cadastrar Funcionário")
      escreval("2-Folha de pagamento")
      escreval("3-Férias")
      escreval("4-Sair")
      escreval("-----------Menu--------------")
      leia(menu)

      escolha menu
         caso 1
            se qtdfuncionarios >= 5 entao
               escreval("Limite de funcionários atingido (máximo 5)")
            senao
               repita
                  qtdfuncionarios <- qtdfuncionarios + 1

                  escreval("------Cadastro de funcionário------")
                  escreva("Escreva o nome do ", qtdfuncionarios, "º funcionário: ")
                  leia(nome[qtdfuncionarios])
                  escreva("Escreva o cargo do ", qtdfuncionarios, "º funcionário: ")
                  leia(cargo[qtdfuncionarios])
                  escreva("Escreva o salário do ", qtdfuncionarios, "º funcionário: ")
                  leia(salario[qtdfuncionarios])
                  escreva("Escreva o código do ", qtdfuncionarios, "º funcionário: ")
                  leia(codigo[qtdfuncionarios])

                  se qtdfuncionarios < 5 entao
                     escreval("Cadastrar mais um funcionário? (s/n):")
                     leia(resposta)
                  senao
                     resposta <- "n"
                     escreval("Limite de funcionários atingido")
                  fimse
               ate resposta <> "s"
            fimse
            escreval("Pressione ENTER para continuar.")
            leia(resposta)

         caso 2
            escreval("-----Folha de Pagamento----")
            se qtdfuncionarios = 0 entao
               escreval("Nenhum funcionário cadastrado")
            senao
               para i de 1 ate qtdfuncionarios faca
                  escreval("Código: ", codigo[i])
                  escreval("Nome: ", nome[i])
                  escreval("Cargo: ", cargo[i])
                  escreval("Salário: R$ ", salario[i]:2:2)
                  escreval("-----------------------------")
               fimpara
            fimse
            escreval("Pressione ENTER para continuar...")
            leia(resposta)

         caso 3
            escreval("-----Férias-------")
            se qtdfuncionarios = 0 entao
               escreval("Nenhum funcionário cadastrado")
            senao
               escreval("Digite o código do funcionário: ")
               leia(opcao)

               encontrou <- falso
               para i de 1 ate qtdfuncionarios faca
                  se codigo[i] = opcao entao
                     encontrou <- verdadeiro
                     escreval("Funcionário encontrado:")
                     escreval("Nome: ", nome[i])
                     escreval("Salário atual: R$ ", salario[i]:2:2)
                     escreval("Valor das férias: R$ ", (salario[i] + (salario[i]/3)):2:2)
                  fimse
               fimpara

               se nao encontrou entao
                  escreval("Funcionário não encontrado!")
               fimse
            fimse
            escreval("Pressione ENTER para continuar...")
            leia(resposta)
      fimescolha
   ate menu = 3
Fimalgoritmo