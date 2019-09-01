## Presentación

En los últimos años se han difundido muchas herramientas estadísticas novedosas para el análisis de información socioeconómica y geográfica. En particular el software denominado “R”, por tratarse de un software libre, se extiende cada vez más en diferentes disciplinas y recibe el aporte de investigadores e investigadoras en todo el mundo, multiplicando sistemáticamente sus capacidades.

Este programa se destaca, entre otras cosas, por su capacidad de trabajar con grandes volúmenes de información, utilizar múltiples bases de datos en simultáneo, generar reportes, realizar gráficos a nivel de publicación y por su comunidad de usuarios que publican sus sintaxis y comparten sus problemas, hecho que potencia la capacidad de consulta y de crecimiento. A su vez, la expresividad del lenguaje permite diseñar funciones específicas que permiten optimizar de forma personalizada el trabajo cotidiano con R.

## Objetivos del curso

El presente Taller tiene como objetivo principal introducir a los participantes en la ciencia de datos, sobre la base de la utilización del lenguaje R aplicado procesamiento de diferentes bases de datos provistas por el programa de Gobierno Abierto y la Encuesta Permanente de Hogares (EPH) - INDEC.  Se apunta a brindar las herramientas necesarias para la gestión de la información, presentación de resultados y algunas técnicas de modelado de datos, de forma tal que los participantes puedan luego avanzar por su cuenta a técnicas más avanzadas.


## Temario

__Eje 1. Programación en R__

### __clase 1__: Introducción al entorno R:
	
+ Descripción del programa “R”. Lógica sintáctica del lenguaje y comandos básicos
+ Presentación de la plataforma RStudio para trabajar en “R”
+ Caracteres especiales en “R”
+ Operadores lógicos y aritméticos
+ Definición de Objetos: Valores, Vectores y DataFrames
+ Tipos de variable (numérica, de caracteres, lógicas)
+ Lectura y Escritura de Archivos

### __clase 2__: Tidyverse:

+ Limpieza de Base de datos: Renombrar y recodificar variables, tratamiento de valores faltantes (missing values/ NA´s)
+ Seleccionar variables, ordenar y agrupar la base de datos para realizar cálculos
+ Creación de nuevas variables
+ Aplicar filtros sobre la base de datos
+ Construir medidas de resumen de la información
+ Tratamiento de variables numéricas (edad, ingresos, horas de trabajo, cantidad de hijos / componentes del hogar, entre otras).

### __clase 3__: Programación funcional

+ Estructuras de código condicionales
+ Loops
+ Creación de funciones a medida del usuario
+ Librería purrr para programación funcional

__Eje 2. Presentación de resultados__

### __clase 4__: Visualización de la información

+ Gráficos básicos de R (función “plot”): Comandos para la visualización ágil de la información
+ Gráficos elaborados en R (función “ggplot”): 
+ Gráficos de línea, barras, Boxplots y distribuciones de densidad
+ Parámetros de los gráficos: Leyendas, ejes, títulos, notas, colores
+ Gráficos con múltiples cruces de variables.

### __clase 5__: Documentación en R

+ Manejo de las extensiones del software “Rmarkdown” y “RNotebook” para elaborar documentos de trabajo, presentaciones interactivas e informes:
+ Opciones para mostrar u ocultar código en los reportes
+ Definición de tamaño, títulos y formato con el cual se despliegan los gráficos y tablas en el informe
+ Caracteres especiales para incluir múltiples recursos en el texto del informe: Links a páginas web, notas al pie, enumeraciones, cambios en el formato de letra (tamaño, negrita, cursiva)
+ Código embebido en el texto para automatización de reportes

### __clase 6__: Shiny

+ Shiny como reportes dinámicos
+ Su utilidad para el análisis exploratorio
+ Lógica de servidor- interfaz de usuario
+ Extensiones del mundo shiny
+ Publicación de resultados


__Eje 3. Estadística__


### __clase 7__: Estadística descriptiva

+ Introducción a probabilidad
+ Introducción a distribuciones
+ El problema de la inversión
+ Estadística
+ Población y muestra
+ Estimadores puntuales, tests de hipótesis
+ Boxplots, histogramas y kernels


### __clase 8__: Correlación y Modelo Lineal

+ Análisis de correlación.
+ Presentación conceptual del modelo lineal
+ El modelo lineal desde una perspectiva computacional
+ Supuestos del modelo lineal
+ Modelo lineal en R
+ Modelo lineal en el tidyverse


__Eje 4. Clases temáticas__


### __clase 9__: Análisis de encuestas

+ Introducción al diseño de encuestas
+ Presentación de la Encuesta Permanente de Hogares
+ Generación de estadísticos de resumen en muestras estratificadas
+ Utilización de los ponderadores


### __clase 10__: Mapas

+ Utilización de información geográfica en R
+ Elaboración de mapas
+ gestión de shapefiles


### __clase 11__: Text Mining

+ Introducción al análisis de textos
+ Limpieza
+ Preprocesamiento
+ BoW
+ Stopwords
+ TF-IDF
+ Wordcloud
+ Escrapeo de Twitter


## Bibliografía


- GWickham, H., & Grolemund, G. (2016). R for data science: import, tidy, transform, visualize, and model data. " O'Reilly Media, Inc.". https://es.r4ds.hadley.nz/
- James, G., Witten, D., Hastie, T., & Tibshirani, R. (2013). An introduction to statistical learning. New York: springer. http://faculty.marshall.usc.edu/gareth-james/ISL/
- Wickham, Hadley. ggplot2: elegant graphics for data analysis. Springer, 2016. https://ggplot2-book.org/


#### Librerias a instalar

```
install.packages(c("tidyverse","openxlsx","xlsx",'ggplot2','GGally','ggridges','treemapify','esquisse','cowplot','ggthemes', 'ggrepel','ggalt','kableExtra','fs','purrr','rmarkdown','modelr','plot3D'))
```





