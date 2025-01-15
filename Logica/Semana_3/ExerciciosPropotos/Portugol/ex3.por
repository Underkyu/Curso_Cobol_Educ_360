programa
{
    funcao inicio()
    {
        cadeia produto, lista = ""
        real valor,valorTotal=0
        inteiro loop = 1, contador = 0

        enquanto(loop == 1)
        {
            escreva("Qual o nome do produto\n")
            leia(produto)
            lista += produto + "\n"
            limpa()

            escreva("Qual o valor do produto\n")
            enquanto(loop == 1){
            	leia(valor)
            	se(valor>0){
            		loop = 0
            		valorTotal += valor
            	}senao{
            		escreva("O valor do produto precisa sim ser maior que 0\nInsira o valor novamente\n")
            	}
            }
            limpa()

            escreva("Deseja continuar comprando? 1(sim) 0(não)\n")
            leia(loop)
            limpa()

            contador++
        }

            escreva(lista, "\n")
        
            escreva("Valor total: ",valorTotal)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 849; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */