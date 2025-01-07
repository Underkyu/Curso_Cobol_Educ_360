programa
{
	//Calhambeque bip bip
	funcao inicio()
	{
		real nota1, nota2, media

		escreva("Qual foi sua primeira nota?\n")
		leia(nota1)
		limpa()
		escreva("Qual foi sua segunda nota?\n")
		leia(nota2)
		limpa()
		media = (nota1+nota2)/2

		escreva("Media: "+media)

		se(media>=7){
			escreva("\nAluno aprovado")
		}senao{
			escreva("\nAluno reprovado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */