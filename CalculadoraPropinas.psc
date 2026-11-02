Algoritmo CalculadoraPropinas
	Definir totalCuenta, porcentajePropina, propina, totalPagar Como Real
	
	Escribir "Ingrese el total de la cuenta:"
	Leer totalCuenta
	
	Escribir "Ingrese el porcentaje de propina deseado (ej. 10, 15, 20):"
	Leer porcentajePropina
	
	propina <- totalCuenta * (porcentajePropina / 100)
	totalPagar <- totalCuenta + propina
	
	Escribir "Propina a pagar: $", propina
	Escribir "Total con propina incluida: $", totalPagar
FinAlgoritmo

