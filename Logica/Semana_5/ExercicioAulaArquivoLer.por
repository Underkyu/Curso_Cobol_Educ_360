programa
{
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Texto --> txt

	cadeia caminho = "c:/Users/GAMER/Curso_Cobol_Educ_360/Logica/Semana_5/funcionarios.txt"
	inteiro func, qnt, contador=0
	cadeia linha
	funcao inicio()
	{
		iniciar()
		processar()
		finalizar()
	}

	funcao iniciar(){
		func = arq.abrir_arquivo(caminho,arq.MODO_LEITURA)
	}

	funcao processar(){
		enquanto(nao arq.fim_arquivo(func)){
			linha = arq.ler_linha(func)
			qnt = txt.numero_caracteres(linha)

			se(qnt>0){
				escreva(linha,"\n")
				contador++
			}
		}
	}

	funcao finalizar(){
		arq.fechar_arquivo(func)
		escreva("Foram registrados ",contador," registros")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */