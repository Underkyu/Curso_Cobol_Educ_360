programa
{
    funcao inicio()
    {
        cadeia produtos[100]
        real valores[100]
        inteiro loop = 1, contador = 0

        enquanto(loop == 1)
        {
            escreva("Qual o nome do produto\n")
            leia(produtos[contador])

            escreva("Qual o valor do produto\n")
            leia(valores[contador])

            escreva("Deseja continuar comprando? 1(sim) 0(não)\n")
            leia(loop)

            contador++
        }

        para(inteiro i = 0; i < contador; i++)
        {
            escreva("Produto: ", produtos[i], "\nValor: ", valores[i], "\n\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */