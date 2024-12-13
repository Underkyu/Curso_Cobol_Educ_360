programa {
  funcao inicio() {
    cadeia produto
    real valor, frete = 0
    inteiro estado

    escreva("Qual o nome do produto\n")
    leia(produto)
    escreva("Qual o valor do produto\n")
    leia(valor)
    escreva("Qual seu estado?\n1-SP 2-RJ 3-MG 4-Outro\n")
    leia(estado)
    escreva("---Detalhes do pedido---\nProduto: "+produto+"\nValor: "+valor)


    escolha(estado){
      caso 1:
      frete = valor*0.1
      escreva("\nEstado: SP\nFrete: "+frete)
      pare
      caso 2:
      frete = valor*0.2
      escreva("\nEstado: SP\nFrete: "+frete)
      pare
      caso 3:
      frete = valor*0.15
      escreva("\nEstado: SP\nFrete: "+frete)
      pare
      caso contrario:
      escreva("\nEstado: Outro\nFrete: Retirar na loja")
      pare
    }
  }
}
