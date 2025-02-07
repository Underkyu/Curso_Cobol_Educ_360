programa
{
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Texto --> txt

	cadeia caminho = "c:/Users/GAMER/Curso_Cobol_Educ_360/Logica/Semana_5/funcionarios.txt"
	inteiro func
	cadeia cod, nome, area, cargo, salario, entrada
	funcao inicio()
	{
		iniciar()
		processar()
		finalizar()
	}

	funcao iniciar(){
		func = arq.abrir_arquivo(caminho,arq.MODO_ACRESCENTAR)

		escreva("---Entrada de dados---\n")


		escreva("Qual o código?\n")
		leia(cod)

		escreva("Qual o nome?\n")
		leia(nome)

		escreva("Qual a área?\n")
		leia(area)

		escreva("Qual o cargo?\n")
		leia(cargo)

		escreva("Qual o salario?\n")
		leia(salario)
		limpa()
	}

	funcao processar(){
		entrada = cod+nome+area+cargo+salario+"\n"	
		
		arq.escrever_linha(entrada, func)
	}

	funcao finalizar(){
		arq.fechar_arquivo(func)
		escreva("Registro efetuado com sucesso")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 711; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */