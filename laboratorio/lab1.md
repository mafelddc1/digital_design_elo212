# ELO212: Laboratorio de Sistemas Digitales Semestre I-2020 Gu´ıa de Actividades Sesion 1 (Intro y marcha blanca)

Grupo: 301

Aula será una herramienta de evaluación, no se subirán guias.

Chip: xc7a100tcsg324-1

Una recomendación que el profesor hace, es siempre comparar el diagrama que uno hace con el diagrama generado por vivado

## 1. Requisitos de entrada
Tener Vivado Design Suite WebpackEdition 2019.2

Leer:
- Datasheet de la placa Nexys4DDR o NexysA7
- Dominar representaciones numéricas en distintas bases. (Binaria y Hexadecimal)

## 2. Objetivos

- Verificar la instalacion de vivado
- Dar una aproximación al desarrollo de sistemas modernos con SystemVerilog
- Introducir conceptos de síntesis lógica y simulación
- Proveer una base teórica y práctica para el trabajo del semestre

## 3. Actividades Guiadas

En esta sesión se revisarán las primeras etapas del diseño digital:
- Diseño en papel
- Descripción con HDL
- Análisis lógico
- Simulación funcional lógica


No se adentrará en etapas como la implementación, el place & route, generación de bitstream y implementación en hardware.
Considere que los archivos HDL describirán la funcionalidad del sistema, pero es la herramienta quién elige como implementarlo en la placa.
El código HDL no se ejecuta como un programa.


Se ilustrarán conceptos fundamentales, comenzando con circuitos simples.
La complejidad se agregará de forma incremental y con ello el uso de buenas prácticas.
Entender los diseños sencillos es fundamental para avanzar en complejidad.

Esta sesión se enfoca en:
- Obtener una visión intuitiva del trabajo con HDLs
- Revisar el uso de Vivado

Los detalles técnicos de SystemVerilog se revisarán en las otras cátedras.

Reportar cualquier duda.

TIPS: Si no puede dibujarlo, no puede implementarlo.
Siempre pensar las cosas y aplicar las técnicas de Computational Thinking


### 3.1 Nexis4 DDR
Introducción a la placa, nomenclatura, capacidades y periféricos.  Todos los diseños se implementan pensando es esto.

### 3.2 Introducción a vivado y creación de un proyecto de diseño
Introducción al entorno de desarrollo de Vivado Design Suite. Crear un proyecto Basado en descripciones RTL y el chip indicado.
No agregar archivos de diseño o constraints.

### 3.3 Conectando cables
Introducción al funcionamiento de los módulos de SystemVerilog.
Indicaciones para la síntesis.
Interpretar el código y hacer un diagrama de el.
Visualizar la representación del circuito que el hardware interpreta.

### 3.4 Simulación funcional y diagramas de tiempo
Indicaciones sobre conceptos y proceso de simulación funcional con testbenches.
Revisar los resultados de las simulaciones.
Generar patrones para evaluar de forma exhaustiva el diseño.

### 3.5 Diseño y descripción de reconocedor de números fibbinarios de 4 bits
Descripción de como, a partir de una especificación funcional, generar el diagrama lógico de un circuito combinacional simple.

#### Enunciado
un número es fibbinario si su representación binaria no tiene 1s consecutivos.

http://oeis.org/A003714
https://www.geeksforgeeks.org/httpswww-geeksforgeeks-orgfibbinary-numbers/

con 'n' bits se pueden hacer 'fibonacci(n)' números fibbinarios

con n=4, los números fibbinarios son: 0, 1, 2, 4, 5, 8, 9, 10

Diseñe un circuito combinacional que identifique con un bit de salida si una entrada de 4 bits es un número fibbinario. De no serlo, el bit tiene valor 0.


#### Desarrollo
1. Tabla de verdad
2. Mapa de Karnaugh Vacio
3. Mapa de Karnaugh con los valores de la tabla de verdad
4. Agrupar y obtener mintérminos
5. Obtener ecuación reducida
6. Generar diagrama lógico

Con lo obtenido, genere una descripción en SystemVerilog, revise operadores lógicos

Comparte el diagrama generado en el desarrollo con el generado por Vivado

Genere un testbench exhaustivo


### 3.6 Descripción de alto nivel para reconocedor de números fibbinarios
## 4. Actividades Adicionales

### BCD y Display de 7 segmentos
## 5. Comentarios Finales
