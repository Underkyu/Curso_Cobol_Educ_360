programa {
  //Aishite
  funcao inicio() {
    real salarioBase, salarioBruto, gratificacao, imposto, salarioFinal

    escreva("Qual seu salario base?\n")
    leia(salarioBase)
    limpa()

    gratificacao = salarioBase * 0.1
    salarioBruto = salarioBase + gratificacao

    se(salarioBruto<=1200){
      imposto = salarioBruto * 0.15
    }senao{
      imposto = salarioBruto * 0.2
    }
    salarioFinal = salarioBruto - imposto
    
    escreva("---Resumo---\nSalario Base: "+salarioBase+"\nGratificação: "+gratificacao+"\nSalario Bruto: "+salarioBruto+"\nImposto: "+imposto+"\nSalario Final: "+salarioFinal)

  }
}