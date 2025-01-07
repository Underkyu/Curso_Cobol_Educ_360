programa {
  funcao inicio() {
    inteiro estado

    escreva("Qual seu estado?\n1-SP 2-RJ 3-MG\n")
    leia(estado)

    escolha(estado){
      caso 1:
      escreva("Paulista\nEstado mais populoso")
      pare
      caso 2:
      escreva("Carioca")
      pare
      caso 3:
      escreva("Mineiro")
      pare
      caso contrario:
      escreva("Valor invalido")
      pare
    }
  }
}
