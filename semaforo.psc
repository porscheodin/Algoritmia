Algoritmo Semaforo
	Definir color Como Cadena
	
	Escribir "Ingrese el color del semaforo (rojo, amarillo, verde):"
	Leer color
	
	color <- Minusculas(color)
	
	Segun color Hacer
		"verde":
			Escribir "Luz Verde: Puede avanzar."
		"amarillo":
			Escribir "Luz Amarilla: Precaucion, disminuya la velocidad."
		"rojo":
			Escribir "Luz Roja: Detengase completamente."
		De Otro Modo:
			Escribir "Color no valido. Ingrese verde, amarillo o rojo."
	FinSegun
FinAlgoritmo

