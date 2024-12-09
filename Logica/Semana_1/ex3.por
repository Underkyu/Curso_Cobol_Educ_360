programa
{
	//Hiding on you wifi
	funcao inicio()
	{
		inteiro ano
		real nota1,nota2
		cadeia nome
		caracter estadoCivil

		escreva("Qual seu nome\n")
		leia(nome)
		limpa()
		escreva("Qual seu estado civil C(asado) ou S(solteiro)\n")
		leia(estadoCivil)
		limpa()

		escreva("Em que ano você estuda?\n")
		leia(ano)
		limpa()
		escreva("Escreva sua nota 1\n")
		leia(nota1)
		limpa()
		escreva("Escreva sua nota 2\n")
		leia(nota2)
		limpa()

		escreva("Olá, " + nome + " Estado civil: "+estadoCivil+"\n")
		escreva("Ano que estuda : " + ano + " nota 1: "+nota1+" nota 2: "+nota2)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */