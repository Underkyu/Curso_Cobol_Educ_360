programa {
  
  funcao inicio() {
	cadeia cargo, departamento
	inteiro idade
	escreva("Qual seu cargo?\n")
	leia(cargo)
	escreva("Qual seu departamento?\n")
	leia(departamento)
	escreva("Qual sua idade?\n")
	leia(idade)
	limpa()

	se(departamento=="TIC" e cargo=="Gerente"){
		se(idade>=60){
			escreva("Você irá receber um bonus plus")
		}senao{
			escreva("Você irá receber um bonus")
		}
	}senao{
		escreva("Você não receberá um bonus")
	}
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 437; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */