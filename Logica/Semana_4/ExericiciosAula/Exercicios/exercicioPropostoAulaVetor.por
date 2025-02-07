programa
{
	
	funcao inicio()
	{
		real saldo, boletos[4]

		escreva("Qual seu saldo?\n")
		leia(saldo)
		limpa()

		para(inteiro i=0; i<=3;i++){
			escreva("Qual o valor do ",i+1,"° boleto?\n")
			leia(boletos[i])
			saldo -= boletos[i]
			limpa()
		}
		
		escreva("Seu saldo final é R$",saldo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */