programa
{
	
	funcao inicio()
	{
		inteiro orcamento, quantTres=0, quantCinco=0, preco=0 
		/*orcamento = valor passado pelo usuario
		quantTres = Quantidade de produtos de 3 reais
		quantCinco =  Quantidade de prodtuos de 5 reais
		Variavel para armazenar soma do preço dos produtos*/

		escreva("---Bem vindo a loja Preço Unico---\nPor favor digite seu orçamento (O orçamento deve de no minimo 8 reais)\n")
		leia(orcamento)
		limpa()
		enquanto(orcamento<8){
			escreva("Orçamento invalido, por favor digite novamente\n")
			leia(orcamento)
			limpa()
		}
		enquanto(preco<orcamento){
			preco += 3
			quantTres++
		}
		enquanto(preco!=orcamento){
			se(preco>orcamento){
				preco-=3
				quantTres--
			}senao se(preco<orcamento){
				preco+=5
				quantCinco++
			}
		}
		escreva("Com base no seu orçamento recomendamos que você compre:\n",quantTres," produtos de R$3,00\n",quantCinco," produto de R$5,00")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */