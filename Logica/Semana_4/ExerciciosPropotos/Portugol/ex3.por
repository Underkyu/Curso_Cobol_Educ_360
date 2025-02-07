programa
{
	inteiro num[8]={45,39,4,77,99,22,33,12},maior=num[0],menor=num[0]
	funcao inicio()
	{
		MaiorMenor()
		finalizar()
	}

	funcao MaiorMenor(){
		para(inteiro i=0; i < 8; i++){
			se(num[i]>maior){
				maior =num[i]	
			}
			se(num[i]<menor){
				menor = num[i]
			}
		}
	}
	funcao finalizar(){
		escreva("Maior valor: ",maior,"\nMenor valor: ",menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 345; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */