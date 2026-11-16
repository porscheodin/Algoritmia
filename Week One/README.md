# Semana 1 - Fundamentos y Estructuras Secuenciales

En esta semana se estudian los fundamentos de la programación en pseudocódigo: definición de variables, tipos de datos, captura de datos por teclado, cálculos aritméticos y salida de resultados en consola.

---

## Ejercicios

### 1. `CalculadoraPropinas.psc`
- **Explicación de la lógica:**  
  Solicita al usuario el total de una cuenta y el porcentaje de propina que desea otorgar. Aplica la fórmula `propina <- totalCuenta * (porcentajePropina / 100)` y suma dicho valor al monto inicial para determinar el total a pagar (`totalPagar <- totalCuenta + propina`).
- **Pruebas de escritorio:**
  - **Prueba 1:**
    - **Entradas:** Total cuenta: `50000`, Porcentaje propina: `10`
    - **Salida esperada:**
      ```text
      Propina a pagar: $5000
      Total con propina incluida: $55000
      ```
    - **Explicación:** El 10% de $50.000 es $5.000. Total final: 50.000 + 5.000 = $55.000.
  - **Prueba 2:**
    - **Entradas:** Total cuenta: `80000`, Porcentaje propina: `15`
    - **Salida esperada:**
      ```text
      Propina a pagar: $12000
      Total con propina incluida: $92000
      ```
    - **Explicación:** El 15% de $80.000 es $12.000. Total final: 80.000 + 12.000 = $92.000.

---

### 2. `EdadEnDias.psc`
- **Explicación de la lógica:**  
  Recibe la edad de una persona expresada en años enteros y realiza una conversión aproximada a días multiplicando dicho valor por la constante de 365 días (`totalDias <- edadAnios * 365`).
- **Pruebas de escritorio:**
  - **Prueba 1:**
    - **Entradas:** Edad en años: `20`
    - **Salida esperada:**
      ```text
      Su edad aproximada en dias es: 7300 dias.
      ```
    - **Explicación:** Multiplicación directa `20 * 365 = 7300`.
  - **Prueba 2:**
    - **Entradas:** Edad en años: `1`
    - **Salida esperada:**
      ```text
      Su edad aproximada en dias es: 365 dias.
      ```
    - **Explicación:** Multiplicación directa `1 * 365 = 365`.

---

### 3. `PromedioNotas.psc`
- **Explicación de la lógica:**  
  Pide tres notas académicas numéricas, calcula la media aritmética sumando las notas y dividiendo el resultado entre 3. Finalmente, utiliza una estructura condicional `Si ... Entonces` para evaluar si el promedio es mayor o igual a 3.0, clasificando el resultado como "Aprobado" o "Reprobado".
- **Pruebas de escritorio:**
  - **Prueba 1 (Aprobado):**
    - **Entradas:** Nota 1: `4.0`, Nota 2: `3.5`, Nota 3: `4.5`
    - **Salida esperada:**
      ```text
      El promedio final es: 4
      Estado: Aprobado
      ```
    - **Explicación:** Suma = 12.0. Promedio = 12.0 / 3 = 4.0. Al ser `>= 3.0`, se imprime estado Aprobado.
  - **Prueba 2 (Reprobado):**
    - **Entradas:** Nota 1: `2.0`, Nota 2: `2.5`, Nota 3: `3.0`
    - **Salida esperada:**
      ```text
      El promedio final es: 2.5
      Estado: Reprobado
      ```
    - **Explicación:** Suma = 7.5. Promedio = 7.5 / 3 = 2.5. Al ser `< 3.0`, entra a la rama `SiNo` con estado Reprobado.

---

### 4. `Saludo.psc`
- **Explicación de la lógica:**  
  Permite interactuar con el usuario mediante la lectura de una cadena de caracteres que representa su nombre y emite un mensaje de bienvenida personalizado por pantalla usando concatenación de texto.
- **Pruebas de escritorio:**
  - **Prueba 1:**
    - **Entradas:** Nombre: `Esteban`
    - **Salida esperada:**
      ```text
      Hola, Esteban! Bienvenido a los ejercicios de algoritmia.
      ```
    - **Explicación:** Captura la cadena "Esteban" y la concatena en la plantilla del mensaje.
  - **Prueba 2:**
    - **Entradas:** Nombre: `Carolina`
    - **Salida esperada:**
      ```text
      Hola, Carolina! Bienvenido a los ejercicios de algoritmia.
      ```
    - **Explicación:** Captura la cadena "Carolina" y genera la salida respectiva.

---

### 5. `tinto.md` (Algoritmo de la Vida Real)
- **Explicación de la lógica:**  
  Plantea el modelamiento de un proceso cotidiano como un algoritmo formal: una secuencia de pasos ordenada, no ambigua, precisa y finita para preparar una taza de café tradicional colombiano, incluyendo puntos de decisión condicional (agregar o no dulce).
- **Pruebas de escritorio / Escenarios:**
  - **Prueba 1 (Con dulce):**
    - **Entrada / Decisión:** Agregar panela/azúcar = Sí.
    - **Resultado esperado:** Se añade el endulzante al agua mientras hierve, luego se agrega el café, se deja reposar, se cuela y se sirve caliente.
  - **Prueba 2 (Sin dulce / café amargo):**
    - **Entrada / Decisión:** Agregar panela/azúcar = No.
    - **Resultado esperado:** Se omite el paso de endulzante, hirviendo el agua únicamente con café molido para obtener un tinto negro tradicional.
