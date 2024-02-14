programa
{
	
	funcao inicio()
	{
		cadeia pais
		inteiro idade
		logico permitido
		escreva("Country/pais? (BRA, USA, POR)\n")
		leia(pais)
		limpa()
		se(pais=="BRA" ou pais=="POR")
		{
			escreva("Idade: ")	
		}
		senao
		{
			escreva("Age: ")	
		}
		leia(idade)
		limpa()

		se((pais =="BRA" e idade >= 18) ou (pais == "USA" e idade >= 21) ou pais == "POR")
		{
			permitido = verdadeiro
		}
		senao
		{
			permitido = falso
		}
		se(permitido e (pais=="POR" ou pais=="BRA"))
		{
			escreva("Permitido.")
		}
		senao se(permitido e pais=="USA")
		{
			escreva("Allowed")
		}
		senao se (nao permitido e pais=="USA")
		{
			escreva("Not Allowed.")
		}
		senao se(nao permitido e (pais=="POR" ou pais=="BRA"))
		{
			escreva("Não permitido")
		}

		
		/*cadeia filhx = "XX"
		se(filhx == "XY" ou filhx == "XX")
		{
			escreva("Sim...")
		}
		senao
		{
			escreva("Não.")
		}*/
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */