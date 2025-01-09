programa
{
	
	funcao inicio()
	{
		real juros, capital, montante
		inteiro meses

		escreva("Qual o capital inicial \n")
		leia(capital)
		limpa()

		escreva("Qual o percentual de juros\n")
		leia(juros)
		limpa()

		escreva("Quantos meses se passaram\n")
		leia(meses)
		limpa()

		montante = capital

		para(inteiro i = 0; i<meses;i++){
			montante = montante + (montante * (juros/100))
		}

		escreva("---Resultado---\nCapital Inicial: R$",capital,"\nPercentual de Juros: ",juros,"%\nQuantidade de Meses: ",meses,"\nMontante Final: R$",montante)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */