programa {
  
  funcao inicio() {
    inteiro media = 0, entrada
    cadeia nome
    escreva("Qual seu nome?\n")
    leia(nome)
    para(inteiro contador = 1; contador<=4; contador++){
		escreva("Digite a ",contador,"° nota\n")
		leia(entrada)
		media += entrada
    }
    media = media / 4
    limpa()
    escreva("---Resultado---\nNome: ",nome,"\nMedia: ",media)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */