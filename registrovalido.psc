Algoritmo RegistroValido
	Definir usuario, clave Como Cadena
	Definir edad Como Entero
	
	Escribir "Ingrese un nombre de usuario:"
	Leer usuario
	
	Escribir "Ingrese una contrasena:"
	Leer clave
	
	Escribir "Ingrese su edad:"
	Leer edad
	
	Si Longitud(usuario) >= 4 Y Longitud(clave) >= 6 Y edad >= 18 Entonces
		Escribir "Registro exitoso! Usuario ", usuario, " creado correctamente."
	SiNo
		Escribir "No se pudo completar el registro:"
		Si Longitud(usuario) < 4 Entonces
			Escribir "- El usuario debe tener al menos 4 caracteres."
		FinSi
		Si Longitud(clave) < 6 Entonces
			Escribir "- La contrasena debe tener al menos 6 caracteres."
		FinSi
		Si edad < 18 Entonces
			Escribir "- Debe tener al menos 18 anios para registrarse."
		FinSi
	FinSi
FinAlgoritmo

