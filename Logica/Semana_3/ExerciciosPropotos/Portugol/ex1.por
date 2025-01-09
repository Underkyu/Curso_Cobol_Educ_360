programa
{
	
	funcao inicio()
	{
		inteiro N = 0, loop = 1, varPar = 0, varImpar = 0

		enquanto(loop == 1){
			escreva("Digite um número\n") 
			enquanto(loop == 1){
				leia(N)
				se(N<0){
				limpa()
				escreva("Valor invalido! Digite novamente\n")	
				}senao{
					loop = 0
				}
			}
				loop = 1
				limpa()

				se(N%2 == 0){
				   varPar++
				}senao{
				   varImpar++
				}

				escreva("Deseja inserir mais valores? 1(sim) ou 0(não)\n")
				leia(loop)
				
				enquanto(loop != 1 e loop != 0 ){
					escreva("Valor invalido digite novamente\n")
					leia(loop)
				}
				limpa()
		}
		escreva("---Resultado---\nNúmeros pares: ",varPar,"\nNúmeros impares: ",varImpar)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 687; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */