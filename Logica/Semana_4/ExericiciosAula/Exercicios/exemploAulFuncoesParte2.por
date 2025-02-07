programa
{
	real resultado,num1,num2,totoper=0.0
	funcao inicio()
	{
		inicializar()
		processar()
		finalizar()
	}

	funcao inicializar(){
		escreva("Entre com o valor 1\n")
		leia(num1)
		escreva("Entre com o valor 2\n")
		leia(num2)
		limpa()
	}
	funcao processar(){
		escreva("---Resultados---\n")
		escreva("Numero 1 digitado", num1, "\n")
		escreva("Numero 2 digitado", num2, "\n")
		escreva("------------------------------\n")
		soma()
		subtracao()
		divisao()
		multiplicacao()
		media()
	}
	funcao finalizar(){
		escreva("---Fim do Programa---")
		escreva("Total de operações: ",totoper)
	}

	funcao soma(){
		resultado = num1 + num2
		escreva("A soma = ",resultado,"\n")
		totoper++
	}
	funcao subtracao(){
		resultado = num1 - num2
		escreva("A subtração = ",resultado,"\n")
		totoper++
	}
	funcao divisao(){
		resultado = num1 / num2
		escreva("A divisão = ",resultado,"\n")
		totoper++
	}
	funcao multiplicacao(){
		resultado = num1 * num2
		escreva("A multiplicação = ",resultado,"\n")
		totoper++
	}
	funcao media(){
		resultado = (num1 + num2) / 2
		escreva("A soma = ",resultado,"\n")
		totoper++
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1012; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */