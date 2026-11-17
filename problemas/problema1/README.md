### Módulo financiero-lógico: cálculo de impuesto
ENUNCIADO:

En el comercio electrónico de TI, el costo final de un equipo informático depende de políticas fiscales y de un esquema de subsidio educativo. Se debe diseñar un módulo que determine automáticamente la tasa de impuesto aplicable a un comprador, evaluando dos proposiciones atómicas:

ENTRADAS:

p: “El comprador es estudiante acreditado” (1 = verdadero, 0 = falso)

q: “El equipo adquirido es de catálogo educativo” (1 = verdadero, 0 = falso)

NOTA: Para la simplificación del proceso de ingreso de respuestas se incluyeron en la interfaz gráfica casillas de selección (Se permite elegir entre "Si" o "No")

SALIDAS:

Ley empleada.

Las condiciones.

Costo inicial del producto.

Porcentaje de impuesto (0 %, 8 % o 16 %). 

Impuesto aplicado.

Monto total a pagar.

### SOLUCIÓN:
Tabla de verdad
| p | q | p ∧ q | p ⊕ q | ¬p ∧ ¬q | Tasa |
| :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | 1 | 1 | 0 | 0 | 0 % |
| 1 | 0 | 0 | 1 | 0 | 8 % |
| 0 | 1 | 0 | 1 | 0 | 8 % |
| 0 | 0 | 0 | 0 | 1 | 16 % |

De acuerdo a las premisas y al precio inicial del producto ingresados por el usuario, se aplica el impuesto calculado al precio inicial y se muestra el resultado al usuario junto a las salidas correspondientes. 

### INSTRUCCIONES DE EJECUCIÓN:

1. Seleccioanr el "Módulo Financiero-lógico" desde el menú principal del programa.
2. Una vez dentro de la interfaz, ingresar los siguientes campos: Precio del producto (Un valor dentro del rango especificado), rellenar las casillas si se trata de un estudiante acreditado o no y si el producto es de catálogo educativo. El programa en automático valida los datos de entrada, en caso de no ser los adecuados no permite su ingreso, además, si el precio del producto es menor a 100, se solicitará el reingreso por medio de una ventana emergente. Si se desea reiniciar los resultados y datos de entarda, se debe presionar el botón "Limpiar". 
3. Presionar el botón "Calcular" para realizar el cálculo correspondiente y mostrar las salidas. 
4. El usuario tiene la opción de continuar usando el módulo, salir al menú principal con el botón "Volver al menú" o salir del programa presionando "Salir".

EJEMPLO EJECUCIÓN:

Datos de entrada:

| Precio del producto: 100 | ¿Eres un estudiante acreditado? Si | ¿El producto está dentro del catálogo educativo? No |

Datos de salida:

Ley: Excención parcial

Condiciones: Es un estudiante acreditado y el producto no es de catálogo educativo

Costo inicial: $100

Porcentaje de impuesto: 8%

Impuesto aplicado: $8.0

Total: $108.0