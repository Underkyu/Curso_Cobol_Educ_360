programa {
  funcao inicio() {
    inteiro escolher
    real valor

    escreva("---Bem Vindo a XTPO---\nPara qual cidade deseja ir?\n1- Vitoria\n2- Muriaé\n3- Niterói\n4-Piracicaba\n")
    leia(escolher)
    limpa()

    escolha(escolher){
      caso 1:
      valor = 2.2*949
      escreva("Valor: "+valor)
      pare
      caso 2:
      valor = 2.2*628
      escreva("Valor: "+valor)
      pare
      caso 3:
      valor = 2.2*424
      escreva("Valor: "+valor)
      pare
      caso 4:
      valor = 2.2*168
      escreva("Valor: "+valor)
      pare
      caso contrario:
      escreva("Cidade não atendida")
      pare
    }
  }
}
