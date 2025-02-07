programa
{
	inteiro var_Num[5]={45,39,4,77,99},media=0,contador=0
	funcao inicio()
	{
		para(inteiro i=0; i < 5; i++){
			media += var_Num[i]
		}
		media = media/5

		escreva("Media: ",media,"\n")

		para(inteiro i=0; i < 5; i++){
			se(var_Num[i]>media){
				escreva("O número ",var_Num[i]," é maiores que a media\n")
				contador++
			}
		}
		escreva("Total de elementos maior que a media: ",contador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */