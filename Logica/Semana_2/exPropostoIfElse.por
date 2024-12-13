programa
{
	
//Nigth of nigths
	funcao inicio()
	{
		cadeia nome
		real nota1, nota2, media

		escreva("Qual seu nome?\n")
		leia(nome)
		limpa()
		escreva("Qual foi sua primeira nota?\n")
		leia(nota1)
		limpa()
		escreva("Qual foi sua segunda nota?\n")
		leia(nota2)
		limpa()
		media = (nota1+nota2)/2

		escreva("Nome: "+nome)
		escreva("\nNota 1: "+nota1)
		escreva("\nNota 2: "+nota2)
		escreva("\nMedia: "+media)

		se(media>=7){
			escreva("\nAluno aprovado")
		}senao se(media>=2){
			escreva("\nAluno de recuperação")
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
 * @POSICAO-CURSOR = 360; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */