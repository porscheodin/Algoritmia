Algoritmo EdadValida
	Definir edad Como Entero
	
	Escribir "Ingrese su edad:"
	Leer edad
	
	Si edad >= 0 Y edad <= 120 Entonces
		Escribir "Edad valida: ", edad, " anios."
		Si edad >= 18 Entonces
			Escribir "La persona es mayor de edad."
		SiNo
			Escribir "La persona es menor de edad."
		FinSi
	SiNo
		Escribir "Error: La edad ingresada no es valida (debe estar entre 0 y 120)."
	FinSi
FinAlgoritmo

