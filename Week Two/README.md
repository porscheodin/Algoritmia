# Semana 2 - Estructuras Condicionales

En esta semana se profundiza en las estructuras de control selectivas: condicionales simples (`Si ... Entonces`), dobles (`Si ... SiNo`), operadores relacionales y lógicos (`Y`, `O`, `<>`), y selección múltiple (`Segun`).

---

## Ejercicios

### 1. `bisiesto.psc`
- **Explicación de la lógica:**  
  Evalúa si un año ingresado cumple los criterios del calendario gregoriano para ser bisiesto: debe ser divisible por 4 y no por 100, o ser divisible directamente entre 400. La condición lógica implementada es:  
  `((anio % 4 == 0 Y anio % 100 <> 0) O (anio % 400 == 0))`.
- **Pruebas de escritorio:**
  - **Prueba 1 (Año bisiesto):**
    - **Entrada:** Año: `2024`
    - **Salida esperada:**
      ```text
      El anio 2024 es bisiesto.
      ```
    - **Explicación:** `2024 % 4 == 0` y `2024 % 100 <> 0`, por lo que cumple la primera parte de la condición lógica.
  - **Prueba 2 (Año no bisiesto):**
    - **Entrada:** Año: `1900`
    - **Salida esperada:**
      ```text
      El anio 1900 NO es bisiesto.
      ```
    - **Explicación:** Aunque `1900 % 4 == 0`, también `1900 % 100 == 0` y no es divisible entre 400 (`1900 % 400 <> 0`), por lo que no es bisiesto.

---

### 2. `edadvalida.psc`
- **Explicación de la lógica:**  
  Realiza una doble validación: primero comprueba que la edad se encuentre en un intervalo biológico válido (`edad >= 0 Y edad <= 120`). En caso afirmativo, evalúa mediante un condicional anidado si la persona es mayor de edad (`edad >= 18`) o menor. Si el valor ingresado queda fuera del rango, muestra un mensaje de error.
- **Pruebas de escritorio:**
  - **Prueba 1 (Edad válida - Mayor de edad):**
    - **Entrada:** Edad: `22`
    - **Salida esperada:**
      ```text
      Edad valida: 22 anios.
      La persona es mayor de edad.
      ```
    - **Explicación:** 22 se encuentra entre 0 y 120, y es mayor o igual a 18.
  - **Prueba 2 (Edad inválida):**
    - **Entrada:** Edad: `-8`
    - **Salida esperada:**
      ```text
      Error: La edad ingresada no es valida (debe estar entre 0 y 120).
      ```
    - **Explicación:** -8 no cumple `edad >= 0`, ejecutando inmediatamente la rama de error del `SiNo`.

---

### 3. `parqueadero.psc`
- **Explicación de la lógica:**  
  Gestiona el cobro por tiempo de estacionamiento. Verifica que las horas registradas sean un valor positivo (`horas > 0`). Si es correcto, multiplica las horas por la tarifa estándar fija de $3.000 y muestra el detalle de la facturación; de lo contrario, muestra una advertencia.
- **Pruebas de escritorio:**
  - **Prueba 1 (Cobro normal):**
    - **Entrada:** Horas: `4`
    - **Salida esperada:**
      ```text
      Horas facturadas: 4
      Tarifa por hora: $3000
      Total a pagar: $12000
      ```
    - **Explicación:** 4 horas * $3.000 = $12.000.
  - **Prueba 2 (Entrada inválida):**
    - **Entrada:** Horas: `0`
    - **Salida esperada:**
      ```text
      Error: El numero de horas debe ser mayor a 0.
      ```
    - **Explicación:** Al ingresar 0 horas no se cumple la condición `horas > 0`, mostrando el mensaje de error.

---

### 4. `registrovalido.psc`
- **Explicación de la lógica:**  
  Evalúa el cumplimiento de tres requisitos de registro simultáneos mediante la conjunción `Y`:
  1. Longitud del nombre de usuario mayor o igual a 4 (`Longitud(usuario) >= 4`).
  2. Longitud de la contraseña mayor o igual a 6 (`Longitud(clave) >= 6`).
  3. Mayoría de edad (`edad >= 18`).  
  Si alguna condición falla, el algoritmo identifica y despliega en pantalla cada error cometido.
- **Pruebas de escritorio:**
  - **Prueba 1 (Registro exitoso):**
    - **Entradas:** Usuario: `esteban`, Clave: `admin123`, Edad: `24`
    - **Salida esperada:**
      ```text
      Registro exitoso! Usuario esteban creado correctamente.
      ```
    - **Explicación:** `Longitud("esteban") = 7 (>=4)`, `Longitud("admin123") = 8 (>=6)` y `24 >= 18`. Todas las condiciones son verdaderas.
  - **Prueba 2 (Registro rechazado con múltiples errores):**
    - **Entradas:** Usuario: `ana`, Clave: `123`, Edad: `15`
    - **Salida esperada:**
      ```text
      No se pudo completar el registro:
      - El usuario debe tener al menos 4 caracteres.
      - La contrasena debe tener al menos 6 caracteres.
      - Debe tener al menos 18 anios para registrarse.
      ```
    - **Explicación:** "ana" tiene 3 caracteres (<4), "123" tiene 3 caracteres (<6) y 15 es menor de edad (<18). El algoritmo desglosa los tres fallos.

---

### 5. `semaforo.psc`
- **Explicación de la lógica:**  
  Utiliza la función `Minusculas()` para normalizar el texto introducido y la estructura de selección múltiple `Segun` para mapear el color con su respectiva instrucción vial: verde (avanzar), amarillo (precaución) o rojo (detenerse). Cualquier otro valor entra a `De Otro Modo` indicando color inválido.
- **Pruebas de escritorio:**
  - **Prueba 1 (Luz verde):**
    - **Entrada:** Color: `Verde`
    - **Salida esperada:**
      ```text
      Luz Verde: Puede avanzar.
      ```
    - **Explicación:** Convierte a minúscula `"verde"` y ejecuta el bloque correspondiente.
  - **Prueba 2 (Entrada no reconocida):**
    - **Entrada:** Color: `azul`
    - **Salida esperada:**
      ```text
      Color no valido. Ingrese verde, amarillo o rojo.
      ```
    - **Explicación:** `"azul"` no coincide con ninguno de los tres casos evaluados, activando `De Otro Modo`.
