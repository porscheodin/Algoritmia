Algoritmo Parqueadero
	Definir horas Como Entero
	Definir tarifaPorHora, totalPagar Como Real
	
	tarifaPorHora <- 3000
	
	Escribir "Ingrese la cantidad de horas que permanecio en el parqueadero:"
	Leer horas
	
	Si horas > 0 Entonces
		totalPagar <- horas * tarifaPorHora
		Escribir "Horas facturadas: ", horas
		Escribir "Tarifa por hora: $", tarifaPorHora
		Escribir "Total a pagar: $", totalPagar
	SiNo
		Escribir "Error: El numero de horas debe ser mayor a 0."
	FinSi
FinAlgoritmo

