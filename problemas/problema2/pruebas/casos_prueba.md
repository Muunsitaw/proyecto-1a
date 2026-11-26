# Evaluador de impuestos tecnológicos: Pruebas manuales, casos 10.

**Reglas lógicas:** Exención 0 % (p ∧ q) | Reducido 8 % ((p ∨ q) ∧ ¬(p ∧ q)) | General 16 % (¬p ∧ ¬q)

Donde p = estudiante acreditado y q = equipo (producto) dentro del catálogo educativo.

| **Caso** | **Entradas** | **Cálculo manual** | **Esperado** | **Obtenido** | **Coincide** |
|---|---|---|---|---|---|
| 1 | costo = 10000.00<br>acreditado = 1<br>equipo = 1 | p ∧ q = 1 ∧ 1 = 1 → 0 %<br>impuesto = 10000.00 × 0.00 = 0.00<br>total = 10000.00 + 0.00 = 10000.00 | tasa = 0 %<br>impuesto = $0.00<br>total = $10,000.00 | tasa = 0 %<br>impuesto = $0.00<br>total = $10,000.00 | Sí |
| 2 | costo = 10000.00<br>acreditado = 1<br>equipo = 0 | p ⊕ q = 1 ⊕ 0 = 1 → 8 %<br>impuesto = 10000.00 × 0.08 = 800.00<br>total = 10000.00 + 800.00 = 10800.00 | tasa = 8 %<br>impuesto = $800.00<br>total = $10,800.00 | tasa = 8 %<br>impuesto = $800.00<br>total = $10,800.00 | Sí |
| 3 | costo = 10000.00<br>acreditado = 0<br>equipo = 1 | p ⊕ q = 0 ⊕ 1 = 1 → 8 %<br>impuesto = 10000.00 × 0.08 = 800.00<br>total = 10000.00 + 800.00 = 10800.00 | tasa = 8 %<br>impuesto = $800.00<br>total = $10,800.00 | tasa = 8 %<br>impuesto = $800.00<br>total = $10,800.00 | Sí |
| 4 | costo = 10000.00<br>acreditado = 0<br>equipo = 0 | ¬p ∧ ¬q = 1 ∧ 1 = 1 → 16 %<br>impuesto = 10000.00 × 0.16 = 1600.00<br>total = 10000.00 + 1600.00 = 11600.00 | tasa = 16 %<br>impuesto = $1,600.00<br>total = $11,600.00 | tasa = 16 %<br>impuesto = $1,600.00<br>total = $11,600.00 | Sí |
| 5 | costo = 15499.50<br>acreditado = 0<br>equipo = 0 | ¬p ∧ ¬q = 1 → 16 %<br>impuesto = 15499.50 × 0.16 = 2479.92<br>total = 15499.50 + 2479.92 = 17979.42 | tasa = 16 %<br>impuesto = $2,479.92<br>total = $17,979.42 | tasa = 16 %<br>impuesto = $2,479.92<br>total = $17,979.42 | Sí |
| 6 | costo = 999999999999999999999999999999<br>acreditado = 1<br>equipo = 0 | p ⊕ q = 1 ⊕ 0 = 1 → 8 %<br>impuesto = 999999999999999999999999999999 × 0.08 = 79 999 999 999 999 999 999 999 999 999.92<br>total = 999999999999999999999999999999 + 79 999 999 999 999 999 999 999 999 999.92 = 10³⁰ − 1 | Error | El precio debe ser menor que $999,999,999,999,999.99 | No |
| 7 | costo = 24500.00<br>acreditado = (vacío)<br>equipo = (vacío) | No existen condiciones, solo el precio. | Error | Complete toda la información para continuar | No |
| 8 | costo = (vacío)<br>acreditado = 0<br>equipo = 0 | ¬p ∧ ¬q → 16 % (límite inferior)<br>impuesto = vacío × 0.16 = error | Error | Complete toda la información para continuar | No |
| 9 | costo = (vacío)<br>acreditado = (vacío)<br>equipo = (vacío) | No existen condiciones ni costo | Error | Complete toda la información para continuar | No |
| 10 | costo = 88.00<br>acreditado = 1<br>equipo = 1 | costo < 100.00 (fuera de rango; sin cálculo) | Error: costo fuera de rango | Error: costo fuera de rango | Sí |


### ESPECIFICACIONES:

1. **Campos obligatorios:** deben estar completos el precio y una opción en cada grupo de botones (estudiante acreditado y catálogo educativo). Si falta alguno, se muestra "Complete toda la información para continuar" y se ejecuta limpiar(), que borra todos los datos capturados y oculta el panel de resultados (casos 7, 8 y 9).
2. **Precio mínimo:** el programa rechaza precios menores a $100 con el mensaje "Ingrese un precio mayor a $100". La condición usada es < 100, por lo que un precio de exactamente $100.00 sí se acepta.
3. **Precio máximo:** el precio no puede ser mayor a $999,999,999,999,999.99. Si lo supera, se muestra "El precio debe ser menor que $999,999,999,999,999.99" (caso 6).
4. **Captura restringida del precio:** el campo solo admite dígitos y un punto decimal. No puede iniciar con 0 ni con punto, no admite más de un punto y se limita a dos decimales. Tampoco permite pegar texto, por lo que no se pueden ingresar letras, signos negativos ni notación científica.
5. **Opciones excluyentes:** cada pregunta usa un grupo de botones de radio (ButtonGroup), de modo que solo se puede elegir Sí o No. Los valores de p y q son únicamente 0 o 1 y el estado "vacío" corresponde a no haber seleccionado ninguna opción.

Para la validación de los resultados numéricos, se establece el uso estricto de 2 cifras decimales. 
* **Prevención de errores de punto flotante:** Operaciones como la raíz cuadrada generan números irracionales con decimales infinitos (como $\sqrt{13} \approx 3.60555127...$). Truncar o redondear a 2 decimales estandariza la salida y elimina discrepancias mínimas provocadas por la arquitectura del procesador.
* **Claridad y legibilidad:** En cálculos geométricos básicos y pruebas funcionales de escritorio, dos cifras decimales ofrecen el equilibrio ideal entre exactitud matemática y facilidad de lectura para el usuario final.

## Casos de error evaluados y corrección:

7,8,9. Campos vacíos en los apartados correspondientes. Solución: Generar una ventana emergente para avisar al usario sobre la los campos no rellenados.  

6. El número ingresado es muy grande (posible overflow). Solución: Se limitó rango de ingreso de valores para que no puedan afectar el funcionamiento del programa, se genera una ventana emergente ára avisar al usuaro si excede el rango.