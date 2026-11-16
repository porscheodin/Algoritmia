# Semana 3 - Estructuras Cíclicas y Modularidad

En esta semana se estudian las estructuras de control repetitivas (`Mientras`, `Para`, `Repetir ... Hasta Que`), variables contadoras y acumuladoras, banderas lógicas (`booleanas`), ciclos anidados y la descomposición modular mediante funciones y subprocesos (`SubProceso`).

---

## Ejercicios

### 1. `CajeroParqueadero.psc`
- **Explicación de la lógica:**  
  Simula la caja de un estacionamiento usando un ciclo `Mientras valor <> 0 Hacer` controlado por valor centinela (el número `0`). En cada iteración incrementa un contador de vehículos (`carros <- carros + 1`) y acumula el dinero recaudado (`total <- total + valor`). Al recibir `0`, el ciclo termina y muestra las estadísticas finales.
- **Pruebas de escritorio:**
  - **Prueba 1 (Cobro sucesivo de vehículos):**
    - **Entradas:** `4000`, `2500`, `3000`, `0`
    - **Salida esperada:**
      ```text
      Carros atendidos: 3
      Total recaudado: $9500
      ```
    - **Explicación:** Se atienden 3 vehículos acumulando 4000 + 2500 + 3000 = $9.500. Al ingresar 0 el ciclo finaliza.
  - **Prueba 2 (Cierre inmediato sin operaciones):**
    - **Entrada:** `0`
    - **Salida esperada:**
      ```text
      Carros atendidos: 0
      Total recaudado: $0
      ```
    - **Explicación:** La condición del ciclo `valor <> 0` resulta falsa desde el inicio, por lo que los contadores se conservan en 0.

---

### 2. `Calificaciones.psc`
- **Explicación de la lógica:**  
  Utiliza un ciclo determinado `Para i <- 1 Hasta 5 Hacer` para solicitar las calificaciones de 5 estudiantes. Durante el recorrido realiza:
  - Acumulación de notas en `suma` para calcular el promedio final (`suma / 5`).
  - Conteo de estudiantes aprobados (`nota >= 3`).
  - Búsqueda de valores extremos (nota mayor y nota menor).
  - Activación de una variable bandera lógica (`alguienPerdio <- Verdadero`) si alguna nota es inferior a 3.0 para alertar sobre estudiantes en refuerzo.
- **Pruebas de escritorio:**
  - **Prueba 1 (Todos aprobados):**
    - **Entradas:** `3.5`, `4.0`, `4.5`, `3.8`, `5.0`
    - **Salida esperada:**
      ```text
      Promedio: 4.16
      Aprobados: 5
      Nota mas alta: 5
      Nota mas baja: 3.5
      ```
    - **Explicación:** Promedio: (3.5+4.0+4.5+3.8+5.0)/5 = 4.16. Los 5 aprueban y no se muestra el mensaje de refuerzo porque la bandera `alguienPerdio` se mantuvo en `Falso`.
  - **Prueba 2 (Con reprobados):**
    - **Entradas:** `2.0`, `3.0`, `1.5`, `4.0`, `2.5`
    - **Salida esperada:**
      ```text
      Promedio: 2.6
      Aprobados: 2
      Nota mas alta: 4
      Nota mas baja: 1.5
      Hay estudiantes en refuerzo
      ```
    - **Explicación:** Suma = 13.0, Promedio = 2.6. Solo 2 notas son `>= 3`. Al detectar notas menores a 3, `alguienPerdio` cambia a `Verdadero` y se emite la advertencia de refuerzo.

---

### 3. `FacturaRestaurante.psc`
- **Explicación de la lógica:**  
  Aplica el paradigma de programación modular mediante tres subprocesos:
  1. `leerPedido`: Función que solicita precios y cantidades de los platos pedidos y calcula el subtotal.
  2. `CalcularPorcentaje(base, porcentaje)`: Función reutilizable que calcula cualquier porcentaje (`base * porcentaje / 100`), empleada para el impuesto al consumo (8%) y la propina voluntaria (10%).
  3. `imprimirFactura(subtotal, impuesto, propina)`: Procedimiento que suma el gran total y presenta la factura detallada.
- **Pruebas de escritorio:**
  - **Prueba 1:**
    - **Entradas:**  
      - Precio Bandeja: `18000`, Cantidad: `2` (Subtotal = $36.000)  
      - Precio Ajiaco: `14000`, Cantidad: `1` (Subtotal = $14.000)
    - **Salida esperada:**
      ```text
        FACTURA  
      Subtotal: $50000
      Impuesto (8%): $4000
      Propina (10%): $5000
      Total: $59000
      ```
    - **Explicación:** Subtotal = 36.000 + 14.000 = $50.000. Impuesto (8%) = $4.000. Propina (10%) = $5.000. Total = $59.000.
  - **Prueba 2:**
    - **Entradas:**  
      - Precio Bandeja: `25000`, Cantidad: `1` (Subtotal = $25.000)  
      - Precio Ajiaco: `15000`, Cantidad: `0` (Subtotal = $0)
    - **Salida esperada:**
      ```text
        FACTURA  
      Subtotal: $25000
      Impuesto (8%): $2000
      Propina (10%): $2500
      Total: $29500
      ```
    - **Explicación:** Subtotal = $25.000. Impuesto (8%) = $2.000. Propina (10%) = $2.500. Total = $29.500.

---

### 4. `Piramide.psc`
- **Explicación de la lógica:**  
  Construye una pirámide de asteriscos alineada al centro empleando ciclos `Para` anidados:
  - Ciclo principal (`fila <- 1 Hasta n`): Controla cada nivel de la pirámide.
  - Ciclo de espacios (`1 Hasta n - fila`): Imprime los espacios necesarios a la izquierda para el centrado.
  - Ciclo de asteriscos (`1 Hasta 2 * fila - 1`): Imprime una cantidad impar de asteriscos correspondiente a cada nivel.
  - Al culminar los ciclos internos de cada nivel, se imprime un salto de línea.
- **Casos de prueba:**
  - **Prueba 1 (Altura 3):**
    - **Entrada:** Altura: `3`
    - **Salida esperada:**
      ```text
        *
       ***
      *****
      ```
    - **Explicación:** Nivel 1: 2 espacios y 1 asterisco; Nivel 2: 1 espacio y 3 asteriscos; Nivel 3: 0 espacios y 5 asteriscos.
  - **Prueba 2 (Altura 4):**
    - **Entrada:** Altura: `4`
    - **Salida esperada:**
      ```text
         *
        ***
       *****
      *******
      ```
    - **Explicación:** Genera 4 niveles con 1, 3, 5 y 7 asteriscos respectivamente con su alineación proporcional.

---

### 5. `ValidarPIN.psc`
- **Explicación de la lógica:**  
  Aplica una estructura de repetición con comprobación posterior `Repetir ... Hasta Que` para validar el PIN bancario (`2580`). Lleva un contador de intentos (`intentos <- intentos + 1`). El ciclo finaliza cuando el usuario acierta (`acceso = Verdadero`) o cuando agota sus 3 intentos permitidos (`intentos = 3`). Posteriormente, una condición evalúa si otorga acceso o bloquea la cuenta.
- **Pruebas de escritorio:**
  - **Prueba 1 (Acceso exitoso al primer intento):**
    - **Entrada:** PIN: `2580`
    - **Salida esperada:**
      ```text
      Acceso concedido
      ```
    - **Explicación:** En el primer intento el PIN ingresado coincide con `2580`, la variable `acceso` se vuelve `Verdadero`, el ciclo se interrumpe y muestra "Acceso concedido".
  - **Prueba 2 (Bloqueo por superar intentos):**
    - **Entradas:** `1234`, `4321`, `9999`
    - **Salida esperada:**
      ```text
      Cuenta bloqueada
      ```
    - **Explicación:** Se ingresan 3 códigos erróneos. Al completarse `intentos = 3` con `acceso = Falso`, el ciclo finaliza y muestra el mensaje de bloqueo.
