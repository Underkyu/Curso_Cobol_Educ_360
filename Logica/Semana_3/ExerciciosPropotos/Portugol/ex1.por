programa
{
	
	funcao inicio()
	{
		inteiro N = 0, varPar = 0, varImpar = 0

		escreva("Digite um número ou 0 para sair do sistema\n")
		leia(N)

		enquanto(N!=0){
			se(N%2==0){
				varPar++
			}senao{
				varImpar++
			}
		limpa()
		escreva("Digite um número ou 0 para sair do sistema\n")
		leia(N)
		}

		limpa()
		escreva("---Resultado---\nNúmeros pares: ",varPar,"\nNúmeros impares: ",varImpar)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */