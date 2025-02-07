programa
{
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Texto --> txt

	cadeia caminho = "c:/Users/GAMER/Curso_Cobol_Educ_360/Logica/Semana_5/funcionarios.txt"
	inteiro func, qnt, contador = 0
	cadeia registro, linha, codigo
	funcao inicio()
	{
		iniciar()
		processar()
		finalizar()
	}

	funcao iniciar(){
		func  = arq.abrir_arquivo(caminho, arq.MODO_LEITURA)
		
		escreva("Qual o código do registro desejado?\n")
		leia(registro)
		limpa()
	}

	funcao processar(){
		enquanto(nao arq.fim_arquivo(func)){
			linha = arq.ler_linha(func)
			qnt = txt.numero_caracteres(linha)
			se(qnt>0){
				se(registro == txt.extrair_subtexto(linha, 0, 4)){
					escreva(linha+"\n")
					se(contador == 0){
						contador = 1
					}
				}
			}
		
		}
	}

	funcao finalizar(){
		arq.fechar_arquivo(func)
		se(contador==0){
			escreva("Registro não encontrado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 723; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */