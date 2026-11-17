### Módulo geométrico-vectorial: incrementos y magnitud
ENUNCIADO:

En gráficos por computadora y modelado de redes, los desplazamientos de elementos en pantalla y la distancia entre dos nodos se representan con coordenadas en un plano cartesiano 2D. Se debe determinar la variación de posición (incrementos) y la magnitud del vector resultante entre dos puntos P1(x1, y1) y P2(x2, y2).

ENTRADAS:

x1, y1: coordenadas del punto inicial P1 (números reales).

x2, y2: coordenadas del punto final P2 (números reales).

SALIDAS:

Coordenada 1 (x1,y1)

Coordenada 2 (x2,y2)

Incremento en X (Δx) con 2 decimales.

Incremento en Y (Δy) con 2 decimales.

La magnitud del vector (distancia entre P1 y P2) con 2 decimales.

### SOLUCIÓN:

Leer las coordenadas de P1 y P2 ingresadas por el usuario.

Calcular los incrementos Δx = x2 − x1 y Δy = y2 − y1.

Aplicar el teorema de Pitágoras sobre el triángulo rectángulo de los catetos formados |Δx| y |Δy|: d = √(Δx² + Δy²).

Mostrar los resultados al usuario.

Como los incrementos se elevan al cuadrado, el signo no afecta la magnitud: d(P1, P2) = d(P2, P1).

### INSTRUCCIONES DE EJECUCIÓN:

1. Seleccioanr el "Módulo geométrico vectorial" desde el menú principal del programa.
2. Una vez dentro de la interfaz, ingresar los siguientes campos: x1 (coordenada X en el punto 1), y1 (coordenada Y en el punto 1), x2 (coordenada X en el punto 2), y2 (coordenada Y en el punto 2). El programa en automático valida los datos de entrada, en caso de no ser los adecuados no permite su ingreso, además, si la coordenada el dato ingresado excede el rango permitido, se solicitará el reingreso por medio de una ventana emergente. Si se desea reiniciar los resultados y datos de entarda, se debe presionar el botón "Limpiar". 
3. Presionar el botón "Calcular" para realizar el cálculo correspondiente y mostrar los resultados. 
4. El usuario tiene la opción de continuar usando el módulo, salir al menú principal con el botón "Volver al menú" o salir del programa presionando "Salir".

EJEMPLO EJECUCIÓN:

Datos de entrada:

Punto inicial P1(x1, y1)

| x1 = 1 | y1 = 2 |

Punto final P2(x2, y2)

| x2 = 4 | y2 = 6 |

Datos de salida:

Coordenada 1: 1.0,2.0

Coordenada 2: 4.0,6.0

Δx: 3.00

Δy: 4.00

Distancia: 5.00