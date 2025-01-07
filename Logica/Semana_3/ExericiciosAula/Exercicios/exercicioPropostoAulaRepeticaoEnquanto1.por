programa {
  
  funcao inicio() {
    inteiro num, contador = 1,res
    escreva("Qual o número?\n")
    leia(num)
    limpa()
    escreva("---Resultado---\n")
    enquanto(contador <= 100){
      res = num*contador
      escreva(num," x ",contador," = ",res,"\n")
      contador++
    }
    
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 16; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */