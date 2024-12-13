programa {
  //Gira Gira
  funcao inicio() {
    cadeia nome
    real salario, salarioFinal, faturamento

    escreva("Qual seu nome?\n")
    leia(nome)
    escreva("Qual seu salario base?\n")
    leia(salario)
    escreva("Qual seu faturamento?\n")
    leia(faturamento)
    limpa()

    se(faturamento>5000){
      salarioFinal = salario +300
    }senao{
      salarioFinal = salario
    }
    escreva("---Resumo---\nNome: "+nome+"\nFaturamento: "+faturamento+"\nSalario base:"+salario+"\nSalario Final: "+salarioFinal)

  }
}
