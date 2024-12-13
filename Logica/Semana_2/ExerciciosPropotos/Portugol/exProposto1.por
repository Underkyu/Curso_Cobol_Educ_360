programa {
  //miku miku beam!!!
  funcao inicio() {
    inteiro n1,n2,n3,n4,q1,q2,q3,q4,soma //n = numero, q = quadrado

    escreva("Qual o primeiro número?\n")
    leia(n1)
    escreva("Qual o segundo número?\n")
    leia(n2)
    escreva("Qual o terceiro número?\n")
    leia(n3)
    escreva("Qual o quarot número?\n")
    leia(n4)

    q1 = n1*n1
    q2 = n2*n2
    q3 = n3*n3
    q4 = n4*n4
    soma= q1+q2+q3+q4

    escreva("---Resultados---\nQuadrado do primeiro número: "+q1+"\nQuadrado do segundo número: "+q2+"\nQuadrado do terceiro número: "+q3+"\nQuadrado do quarto número: "+q4+"\nSoma dos quadrados: "+soma)
  }
}
