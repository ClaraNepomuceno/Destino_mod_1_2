Algoritmo "M�dulorecursoshumanos"
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
      escreval("1-Cadastrar Funcion�rio")
      escreval("2-Folha de pagamento")
      escreval("3-F�rias")
      escreval("4-Sair")
      escreval("-----------Menu--------------")
      leia(menu)

      escolha menu
         caso 1
            se qtdfuncionarios >= 5 entao
               escreval("Limite de funcion�rios atingido (m�ximo 5)")
            senao
               repita
                  qtdfuncionarios <- qtdfuncionarios + 1

                  escreval("------Cadastro de funcion�rio------")
                  escreva("Escreva o nome do ", qtdfuncionarios, "� funcion�rio: ")
                  leia(nome[qtdfuncionarios])
                  escreva("Escreva o cargo do ", qtdfuncionarios, "� funcion�rio: ")
                  leia(cargo[qtdfuncionarios])
                  escreva("Escreva o sal�rio do ", qtdfuncionarios, "� funcion�rio: ")
                  leia(salario[qtdfuncionarios])
                  escreva("Escreva o c�digo do ", qtdfuncionarios, "� funcion�rio: ")
                  leia(codigo[qtdfuncionarios])

                  se qtdfuncionarios < 5 entao
                     escreval("Cadastrar mais um funcion�rio? (s/n):")
                     leia(resposta)
                  senao
                     resposta <- "n"
                     escreval("Limite de funcion�rios atingido")
                  fimse
               ate resposta <> "s"
            fimse
            escreval("Pressione ENTER para continuar.")
            leia(resposta)

         caso 2
            escreval("-----Folha de Pagamento----")
            se qtdfuncionarios = 0 entao
               escreval("Nenhum funcion�rio cadastrado")
            senao
               para i de 1 ate qtdfuncionarios faca
                  escreval("C�digo: ", codigo[i])
                  escreval("Nome: ", nome[i])
                  escreval("Cargo: ", cargo[i])
                  escreval("Sal�rio: R$ ", salario[i]:2:2)
                  escreval("-----------------------------")
               fimpara
            fimse
            escreval("Pressione ENTER para continuar...")
            leia(resposta)

         caso 3
            escreval("-----F�rias-------")
            se qtdfuncionarios = 0 entao
               escreval("Nenhum funcion�rio cadastrado")
            senao
               escreval("Digite o c�digo do funcion�rio: ")
               leia(opcao)

               encontrou <- falso
               para i de 1 ate qtdfuncionarios faca
                  se codigo[i] = opcao entao
                     encontrou <- verdadeiro
                     escreval("Funcion�rio encontrado:")
                     escreval("Nome: ", nome[i])
                     escreval("Sal�rio atual: R$ ", salario[i]:2:2)
                     escreval("Valor das f�rias: R$ ", (salario[i] + (salario[i]/3)):2:2)
                  fimse
               fimpara

               se nao encontrou entao
                  escreval("Funcion�rio n�o encontrado!")
               fimse
            fimse
            escreval("Pressione ENTER para continuar...")
            leia(resposta)
      fimescolha
   ate menu = 3
Fimalgoritmo