algoritmo "ModuloFinanceiro"
var
   //CONTROLE GERAL
   opcaoMenu, i: inteiro
   opcaoPagamento: inteiro
   opcaoControle: inteiro
   opcaoRelatorio: inteiro
   continuar: caractere
   dataAtual: caractere
   totalRegistro: inteiro

   //COMPRAS
   nomeCompra: vetor[1..10] de caractere
   valorCompra: vetor[1..10] de real
   dataCompra: vetor[1..10] de caractere
   totalCompra: inteiro
   totalValorCompra: real

   //PAGAMENTOS
   nomePagamento: vetor[1..10] de caractere
   valorPagamento: vetor[1..10] de real
   dataPagamento: vetor[1..10] de caractere
   totalPagamento: inteiro
   totalValorPagamento: real

   //Módulo de Fornecedores
   nomeFornecedor: vetor[1..10] de caractere
   totalFornecedores: inteiro
   cpf, telefone: inteiro

   //CAIXA
   entradasCaixa: real
   saidasCaixa: real
   valorTemp: real
   saldo: real

inicio

   totalCompra <- 0
   totalPagamento <- 0
   totalFornecedores <- 0
   totalValorCompra <- 0
   totalValorPagamento <- 0
   entradasCaixa <- 0
   saidasCaixa <- 0
   saldo <- 0


   /////////////////////////////////////////////////////
   //para i de 1 ate 10 faca
   repita opcaoMenu // menu principal
      limpatela
      escreval(" SISTEMA FINANCEIRO   ")
      escreval("Data: ", dataAtual)
      escreval("1. Registrar Compra")
      escreval("2. Registrar Pagamento")
      escreval("3. Relatório Geral")
      escreval("4. Cadastrar Fornecedor")
      escreval("5. Sair")
      escreva("Opção: ")
      leia(opcaoMenu)
      /// /////////////////////////////////////////////////////
      //escolha opcaoMenu
   escolha opcaoMenu
         caso 1
            escreval("REGISTRAR COMPRA")
            se totalCompra < 10 entao
               totalCompra <- totalCompra + 1
               escreva("Descrição da Compra: ")
               leia(nomeCompra[totalCompra])
               escreva("Valor da Compra R$: ")
               leia(valorCompra[totalCompra])
               escreva("Data da Compra (DD/MM/AAAA): ")
               leia(dataCompra[totalCompra])
               totalValorCompra <- totalValorCompra + valorCompra[totalCompra]
               saldo <- saldo - valorCompra[totalCompra]
               escreval("Compra registrada com sucesso!")
            senao
               escreval("Limite de compras atingido (10).")
            fimse
            escreval("Pressione ENTER para voltar ao menu:")
            leia()

       caso 2
       
      se totalPagamento < 10 entao
         totalPagamento <- totalPagamento + 1
         escreva("Descrição do Pagamento: ")
         leia(nomePagamento[totalPagamento])
         escreva("Valor do Pagamento R$: ")
         leia(valorPagamento[totalPagamento])
         escreva("Data do Pagamento (DD/MM/AAAA): ")
         leia(dataPagamento[totalPagamento])
         totalValorPagamento <- totalValorPagamento + valorPagamento[totalPagamento]
         saldo <- saldo + valorPagamento[totalPagamento]
         escreval("Pagamento registrado com sucesso!")
      senao
         escreval("Limite de pagamentos atingido (10).")
      fimse
      escreval("Pressione ENTER para voltar ao menu")
      leia(continuar)

        caso 3
      escreval("  RELATÓRIO Geral  ")
      escreval("Data: ", dataAtual)
      escreval("========================")
      escreval("Compras Registradas")
      se totalCompra > 0 entao
         para i de 1 ate totalCompra faca
            escreval("Item ", i, ":")
            escreval("Descrição: ", nomeCompra[i])
            escreval("Valor: R$ ", valorCompra[i]:8:2)
            escreval("Data: ", dataCompra[i])
         fimpara
         escreval("TOTAL COMPRAS: R$ ", totalValorCompra:8:2)
      senao
         escreval("Nenhuma compra registrada.")
      fimse

      escreval("")

      escreval("PAGAMENTOS REGISTRADOS")
      se totalPagamento > 0 entao
         para i de 1 ate totalPagamento faca
            escreval("Item ", i, ":")
            escreval("Descrição: ", nomePagamento[i])
            escreval("Valor: R$ ", valorPagamento[i]:8:2)
            escreval("Data: ", dataPagamento[i])
         fimpara
         escreval("TOTAL PAGAMENTOS: R$ ", totalValorPagamento:8:2)
      senao
         escreval("Nenhum pagamento registrado.")
      fimse


      escreval("RESUMO FINANCEIRO")
      escreval("Saldo Atual: R$ ", saldo:10:2)
      escreval("Total de Entradas: R$ ", totalValorPagamento:10:2)
      escreval("Total de Saídas: R$ ", totalValorCompra:10:2)
      escreval("Relatório emitido em: ", dataPagamento[i])
      escreval("Pressione ENTER para voltar ao menu")
      leia(continuar)

        caso 4
      escreval("CADASTRO DE FORNECEDOR ")
      se totalFornecedores < 10 entao
         totalFornecedores <- totalFornecedores + 1
         escreval("Nome do Fornecedor: ")
         leia(nomeFornecedor[totalFornecedores])
         escreva("CPF:")
         leia(cpf)
         escreva("Telefone:")
         leia(telefone)

         escreval("Fornecedor cadastrado com sucesso! (Total: ", totalFornecedores, ")")
      senao
         escreval("Limite de fornecedores atingido (10).")
      fimse
      escreval("Pressione ENTER para voltar ao menu")
      leia(continuar)
       fimescolha
   ate opcaoMenu = 5

fimalgoritmo













