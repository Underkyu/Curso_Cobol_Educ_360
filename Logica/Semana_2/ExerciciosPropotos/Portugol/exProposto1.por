programa {
  //miku miku beam!!!
  funcao inicio() {
    inteiro n1,n2,n3,n4,q1,q2,q3,q4,soma //n = numero, q = quadrado

    escreva("Qual o primeiro n�mero?\n")
    leia(n1)
    escreva("Qual o segundo n�mero?\n")
    leia(n2)
    escreva("Qual o terceiro n�mero?\n")
    leia(n3)
    escreva("Qual o quarot n�mero?\n")
    leia(n4)

    q1 = n1*n1
    q2 = n2*n2
    q3 = n3*n3
    q4 = n4*n4
    soma= q1+q2+q3+q4

    escreva("---Resultados---\nQuadrado do primeiro n�mero: "+q1+"\nQuadrado do segundo n�mero: "+q2+"\nQuadrado do terceiro n�mero: "+q3+"\nQuadrado do quarto n�mero: "+q4+"\nSoma dos quadrados: "+soma)
  }
}
