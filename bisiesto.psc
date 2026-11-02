Algoritmo Bisiesto
	Definir anio Como Entero
	
	Escribir "Ingrese un anio:"
	Leer anio
	
	Si (anio % 4 == 0 Y anio % 100 <> 0) O (anio % 400 == 0) Entonces
		Escribir "El anio ", anio, " es bisiesto."
	SiNo
		Escribir "El anio ", anio, " NO es bisiesto."
	FinSi
FinAlgoritmo

