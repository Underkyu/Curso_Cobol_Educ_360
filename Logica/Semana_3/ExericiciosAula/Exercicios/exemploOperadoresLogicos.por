programa {
  
  funcao inicio() {
	inteiro nacionalidade, idade
	escreva("Qual sua nacionalidade (1) Brasileiro (2) Estrangeiro\n")
	leia(nacionalidade)
	escreva("Qual sua idade?\n")
	leia(idade)
	limpa()

	se(nacionalidade == 1 e idade >=16)
	escreva("Você pode votar")

	se(nacionalidade==2)
	escreva("Obrigado pela escolha do nosso pais, mas você não pode votar")
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */