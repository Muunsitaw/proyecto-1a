# Cálculo geométrico vectorial: Pruebas manuales, 10 casos.

**Fórmulas:** $\Delta x = x_2 - x_1 \mid \Delta y = y_2 - y_1 \mid d = \sqrt{(\Delta x)^2 + (\Delta y)^2}$

| Caso | Entradas | Cálculo manual | Esperado | Obtenido | Coincide |
| :---: | :--- | :--- | :--- | :--- | :---: |
| **1** | $x_1 = 0$<br>$y_1 = 0$<br>$x_2 = 3$<br>$y_2 = 4$ | $\Delta x = 3 - 0 = 3$<br>$\Delta y = 4 - 0 = 4$<br>$d = \sqrt{3^2 + 4^2} = \sqrt{25} = 5$ | $\Delta x = 3$<br>$\Delta y = 4$<br>$d = 5.00$ | $\Delta x = 3$<br>$\Delta y = 4$<br>$d = 5.00$ | **Sí** |
| **2** | $x_1 = $ *(vacío)*<br>$y_1 = $ *(vacío)*<br>$x_2 = $ *(vacío)*<br>$y_2 = $ *(vacío)* | $\Delta x = 8 - 2 = 6$<br>$\Delta y = 11 - 3 = 8$<br>$d = \sqrt{6^2 + 8^2} = \sqrt{100} = 10$ | $\Delta x = 6$<br>$\Delta y = 8$<br>$d = 10.00$ | Complete toda la información para continuar | **No** |
| **3** | $x_1 = 1$<br>$y_1 = $ *(vacío)*<br>$x_2 = 3$<br>$y_2 = 5$ | $\Delta x = 3 - 1 = 2$<br>$\Delta y = 5 - 2 = 3$<br>$d = \sqrt{2^2 + 3^2} = \sqrt{13} \approx 3.6055$ | $\Delta x = 2$<br>$\Delta y = 3$<br>$d = 3.61$ | Complete toda la información para continuar | **No** |
| **4** | $x_1 = $ *(vacío)*<br>$y_1 = 4$<br>$x_2 = 9$<br>$y_2 = 4$ | $\Delta x = 9 - 1 = 8$<br>$\Delta y = 4 - 4 = 0$<br>$d = \sqrt{8^2 + 0^2} = \sqrt{64} = 8$ | $\Delta x = 8$<br>$\Delta y = 0$<br>$d = 8.00$ | Complete toda la información para continuar | **No** |
| **5** | $x_1 = 99999999999999$<br>$y_1 = 6$<br>$x_2 = 5$<br>$y_2 = 14$ | $\Delta x = 5 - 5 = 0$<br>$\Delta y = 14 - 2 = 12$<br>$d = \sqrt{0^2 + 12^2} = \sqrt{144} = 12$ | $\Delta x = 0$<br>$\Delta y = 12$<br>$d = 12.00$ | Los números no pueden ser menores a -999999999.99 ni mayores a 999999999.99 | **No** |
| **6** | $x_1 = 7$<br>$y_1 = 7$<br>$x_2 = 7$<br>$y_2 = 7$ | $\Delta x = 7 - 7 = 0$<br>$\Delta y = 7 - 7 = 0$<br>$d = \sqrt{0^2 + 0^2} = \sqrt{0} = 0$ | $\Delta x = 0$<br>$\Delta y = 0$<br>$d = 0.00$ | No se puede realizar el cálculo de 2 puntos iguales | **No** |
| **7** | $x_1 = 1.5$<br>$y_1 = 2.5$<br>$x_2 = 4.0$<br>$y_2 = 6.5$ | $\Delta x = 4.0 - 1.5 = 2.5$<br>$\Delta y = 6.5 - 2.5 = 4.0$<br>$d = \sqrt{2.5^2 + 4.0^2} = \sqrt{22.25} \approx 4.7169$ | $\Delta x = 2.50$<br>$\Delta y = 4.00$<br>$d = 4.72$ | $\Delta x = 2.50$<br>$\Delta y = 4.00$<br>$d = 4.72$ | **Sí** |
| **8** | $x_1 = 5.23$<br>$y_1 = 6.45$<br>$x_2 = 1.11$<br>$y_2 = 3.14$ | $\Delta x = 1.11 - 5.23 = -4.12$<br>$\Delta y = 3.14 - 6.45 = -3.31$<br>$d = \sqrt{(-4.12)^2 + (-3.31)^2} = \sqrt{27.9305} \approx 5.2849$ | $\Delta x = -4.12$<br>$\Delta y = -3.31$<br>$d = 5.28$ | $\Delta x = -4.12$<br>$\Delta y = -3.31$<br>$d = 5.28$ | **Sí** |
| **9** | $x_1 = -3$<br>$y_1 = -4$<br>$x_2 = 2$<br>$y_2 = 8$ | $\Delta x = 2 - (-3) = 5$<br>$\Delta y = 8 - (-4) = 12$<br>$d = \sqrt{5^2 + 12^2} = \sqrt{169} = 13$ | $\Delta x = 5$<br>$\Delta y = 12$<br>$d = 13.00$ | $\Delta x = 5$<br>$\Delta y = 12$<br>$d = 13.00$ | **Sí** |
| **10** | $x_1 = -100.5$<br>$y_1 = 200.0$<br>$x_2 = -400.5$<br>$y_2 = -200.0$ | $\Delta x = -400.5 - (-100.5) = -300.0$<br>$\Delta y = -200.0 - 200.0 = -400.0$<br>$d = \sqrt{(-300)^2 + (-400)^2} = \sqrt{250000} = 500$ | $\Delta x = -300.00$<br>$\Delta y = -400.00$<br>$d = 500.00$ | $\Delta x = -300.00$<br>$\Delta y = -400.00$<br>$d = 500.00$ | **Sí** |

### ESPECIFICACIONES:

Para la validación de los resultados numéricos, se establece el uso estricto de 2 cifras decimales. 
* **Prevención de errores de punto flotante:** Operaciones como la raíz cuadrada generan números irracionales con decimales infinitos (como $\sqrt{13} \approx 3.60555127...$). Truncar o redondear a 2 decimales estandariza la salida y elimina discrepancias mínimas provocadas por la arquitectura del procesador.
* **Claridad y legibilidad:** En cálculos geométricos básicos y pruebas funcionales de escritorio, dos cifras decimales ofrecen el equilibrio ideal entre exactitud matemática y facilidad de lectura para el usuario final.

RANGO MÁXIMO Y MÍNIMO:

Se aceptan valores en las entradas de -999999999.99 hasta +999999999.99
 (Valores por encima o menores no serán admitidos por el programa)

VALORES:

El programa no acepta el ingreso de carcatéres especiales, letras, solo números reales.