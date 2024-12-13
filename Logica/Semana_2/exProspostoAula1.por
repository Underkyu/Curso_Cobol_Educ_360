programa
{
	//Dr Kiroki desu
	funcao inicio()
	{
		cadeia produto
		real valor, valorFinal
		inteiro desconto

		escreva("Qual o nome do produto?\n")
		leia(produto)
		limpa()

		escreva("Qual o valor do produto?\n")
		leia(valor)
		limpa()

		escreva("Qual o desconto do produto?\n")
		leia(desconto)
		limpa()

		valorFinal = valor - valor*desconto/100
		escreva("---Detalhes do produto---\n\n")
		escreva("Nome: "+produto+"\n")
		escreva("Valor: "+valor+"\n")
		escreva("Desconto: "+desconto+"%\n")
		escreva("Valor Final: "+valorFinal+"\n")

		se(valorFinal>=1000){
			escreva("\nFrete gratis")
		}senao{
			escreva("\nRetirar na loja")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 638; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */