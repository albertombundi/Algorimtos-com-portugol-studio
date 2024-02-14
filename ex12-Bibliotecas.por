programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		cadeia in
		inteiro n, m=0, f=0, b=0
		caracter a
		escreva("Digite a entrada: ")
		leia(in)
		limpa()
		in = t.caixa_alta(in)
		n = t.numero_caracteres(in)
		para(inteiro i = 0; i<n; i++){
			a = t.obter_caracter(in, i)
			se(a == 'F'){				 
				f++ //f = f + 1/ f += 1
			} senao se(a == 'M'){
				m++ //m = m + 1 / m += 1 
			}senao{
				b++
			}
			
		}
		escreva("São "+m+" Pessoas do género masculino, e "+f+" Pessoas do género feminino e "+b+"\n Pessoas que não se indentificam com nenhum dos dois géneros.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */