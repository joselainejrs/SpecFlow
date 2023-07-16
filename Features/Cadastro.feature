Feature: Cadastro

	@Cadastramento
	Scenario Outline: Cadastramento Dados Pessoais
		Given Que esteja na tela de Cadastro
		Examples:
			| NomeCompleto         | Email              | Senha | StatusCode |
			| Osmar Da silva       | osmar@teste.com    | ****  | 200        | 
			| Beatriz De Oliveira  | beatriz@teste.com  | ****  | 400        |
			