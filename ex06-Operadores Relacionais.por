programa
{
	
	funcao inicio()
	{
		real nota 
		escreva("Insira a nota(use pontos ao invés de vírgulas): \n")
		leia(nota)
		limpa()
		se ( nota < 0 ou nota >100)
		{
			escreva("NOTA inválida (",nota,")")
		}
		senao se (nota <= 40)
		{
			escreva("O aluno foi REPROVADO!")
		}
		senao se (nota < 60)
		{
			escreva("O aluno está de RECUPERAÇÃO!")
		}
		senao se (nota > 80)
		{
			escreva("O aluno foi aprovado e DESTACOU-SE!")
		}
		senao se (nota >= 60)
		{
			escreva("O aluno foi APROVADO!")
		}
		escreva("\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */