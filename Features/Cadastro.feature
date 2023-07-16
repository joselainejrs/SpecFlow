@Cadastramento
Feature: Cadastro
	Para teste de cadastro de dados básicos com sucesso
	Para teste de cadastro de dados básicos com com erro.


@TabelaComDadosCadastraisSucesso
Scenario: Cenario de Sucesso no momento do cadastro
	Given Na Cadastro
	Then Que realize o cadastro
		| NomeCompleto             | Email              | Senha | StatusCode |
		| Osmar Da silva           | osmar@teste.com    | ****  | 200        | 
		| Melissa Romao De Andrade | melissa@teste.com  | ****  | 200        |

@TabelaComDadosCadastraisErro
Scenario: Cenario de Erro no momento do cadastro
	Given Que esteja na tela de Cadastro
		| NomeCompleto         | Email              | Senha | StatusCode |
		| Beatriz De Oliveira  | beatriz.teste.com  | ****  | 400        |
			