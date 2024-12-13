programa {
  funcao inicio() {
    real altura, peso,imc

    escreva("Qual sua altura?\n")
    leia(altura)
    limpa()
    escreva("Qual seu peso?\n")
    leia(peso)
    limpa()
  
    imc = peso / (altura*altura)
    escreva("IMC = "+imc)
    se(imc>=25){
      escreva(" - Indice acima")
    }
  }
}
