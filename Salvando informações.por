programa
{
	
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Tipos

	
	inteiro vagas[20]
	
	const cadeia CAMINHO = "./park.txt"
	
	funcao abrir(){
		se(arq.arquivo_existe(CAMINHO)){
			inteiro arquivo =  arq.abrir_arquivo(CAMINHO, arq.MODO_LEITURA)
			cadeia linha
			para(inteiro i = 0; i <20; i++){
				linha = arq.ler_linha(arquivo)
				se(linha == ""){
				   pare
				}senao{
					vagas[i] = Tipos.cadeia_para_inteiro(linha, 10)
				}
			}
			arq.fechar_arquivo(arquivo)
		}		
	}
	funcao salvar(){
		inteiro arquivo = arq.abrir_arquivo(CAMINHO, arq.MODO_ESCRITA)
		cadeia linha
		para(inteiro i = 0; i < 20; i++){
			linha = Tipos.inteiro_para_cadeia(vagas[i], 10)
			arq.escrever_linha(linha, arquivo)
		}		
		arq.fechar_arquivo(arquivo)	
		
	}
	funcao espere(){
		cadeia _
		escreva("\n\nPressione enter para continuar..")
		leia(_)
	}
	funcao logico vagaOcupada(inteiro vaga){
		se(vagas[vaga-1] == 1){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}
	funcao registrarEntrada(){
		abrir()
		inteiro vaga
		escreva("Digite o número de vaga para qual você deseja registrar uma entrada.\n ")
		leia(vaga)
		se(vagaOcupada(vaga)){
			escreva("Dois corpos não ocupam o mesmo espaço ao tempo! há um veículo estacionado nesta vaga")
		}senao{
			vagas[vaga-1] = 1
			abrir()
			escreva("Sucesso.")
		}
	}
	funcao registrarSaida(){
		abrir()
		inteiro vaga
		escreva("Digite o numero da vaga para qual você deseja registrar uma saida.\n")
		leia(vaga)
		se(vagaOcupada(vaga)){
			vagas[vaga-1] = 0
			salvar()
			escreva("Sucesso")
		}senao{
			escreva("Chamando caça-fantasma! não há nenhum estacionado nesta vaga...")
		}	
		
	}
	funcao listarVagas(){
		abrir()
		escreva("As vagas serão listadas abaixo. dois pontos indicam área ocupada, enquanto números indicam vagas disponíveis.\n")
		escreva(" -----------------------------------------------------------\n")
		para(inteiro i = 1; i<=20; i++){
			se(vagaOcupada(i)){
				escreva("|••")
			}senao{
				se(i < 10){
					escreva("|0"+i)
				}senao{
					escreva("|"+i)
				}

			}
			
		}
		escreva("|\n -----------------------------------------------------------")
	}
	funcao inicio()
	{
		inteiro opcao
		logico continuar = verdadeiro
		enquanto(continuar){
			escreva("SISTEMA DE GESTÃO DE ESTACIONAMENTO\n\n")
			escreva("Escolha uma opção\n")
			escreva("1. Registrar entradas\t3. Listar registros\n2. Registrar Saída\t4. Fechar\n")
			leia(opcao)
			limpa()
			escolha(opcao){
				caso 1:
				registrarEntrada()
				espere()
				pare
				caso 2:
				registrarSaida()
				espere()
				pare
				caso 3:
				listarVagas()
				espere()
				pare
				caso contrario:
				continuar = falso
			}	
			limpa()
		}
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */