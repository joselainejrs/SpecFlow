Feature: Calculo

	@calculo
	Scenario Outline: Calculo com os Operadores
		Given Que a calculadora esteja ligada
		Examples:
			| primeiroNumero | segundoNumero | operacao | resultado |
			| 3              | 2             | -        | 1         | 
			| 8              | 3             | -        | 5         |
			| 28             | 8             | -        | 20        | 
			| 5              | 2             | /        | 2.5       | 
			| 3              | 3             | /        | 1         |
			| 20             | 5             | /        | 4         | 
			| 5              | 4             | *        | 20        | 
			| 7              | 9             | *        | 16        |
			| 2              | 2             | *        | 4         | 
			| 4              | 1             | +        | 5         | 
			| 9              | 5             | +        | 14        |
			| 1              | 6             | +        | 7         | 

