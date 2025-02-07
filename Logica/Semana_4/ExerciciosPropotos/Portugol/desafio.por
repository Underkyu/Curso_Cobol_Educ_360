programa
{
	inteiro num[8]={45,39,4,77,99,22,33,12},ordena=0
	funcao inicio()
	{
		ordenar()
		finalizar()
	}

	funcao ordenar(){
		para(inteiro i=0; i < 8; i++){
			para(inteiro j=0; j < 7; j++){
				se(num[j]>num[j+1]){
					ordena = num[j]
					num[j] = num[j+1]
					num[j+1] = ordena
				}
			}
		}
	}
	funcao finalizar(){
		escreva("Lista ordenada: ")
		para(inteiro i=0; i < 8; i++){
			escreva(num[i]," ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 189; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */