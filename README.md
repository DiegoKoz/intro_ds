
# Presentación

En los últimos años se han difundido muchas herramientas estadísticas novedosas para el análisis de información socioeconómica y geográfica. En particular el software denominado “R”, por tratarse de un software libre, se extiende cada vez más en diferentes disciplinas y recibe el aporte de investigadores e investigadoras en todo el mundo, multiplicando sistemáticamente sus capacidades.

Este programa se destaca, entre otras cosas, por su capacidad de trabajar con grandes volúmenes de información, utilizar múltiples bases de datos en simultáneo, generar reportes, realizar gráficos a nivel de publicación y por su comunidad de usuarios que publican sus sintaxis y comparten sus problemas, hecho que potencia la capacidad de consulta y de crecimiento. A su vez, la expresividad del lenguaje permite diseñar funciones específicas que permiten optimizar de forma personalizada el trabajo cotidiano con R.

# Objetivos del curso

El presente Taller tiene como objetivo principal introducir a los participantes en la ciencia de datos, sobre la base de la utilización del lenguaje R aplicado procesamiento de diferentes bases de datos provistas por el programa de Gobierno Abierto y la Encuesta Permanente de Hogares (EPH) - INDEC.  Se apunta a brindar las herramientas necesarias para la gestión de la información, presentación de resultados y algunas técnicas de modelado de datos, de forma tal que los participantes puedan luego avanzar por su cuenta a técnicas más avanzadas.



# Materiales para las clases

- Materiales eje 1

[![](img/Download.png)](materiales_eje1.zip)

- Materiales eje 2

[![](img/Download.png)](materiales_eje2.zip)

- Materiales eje 3

[![](img/Download.png)](materiales_eje3.zip)


## [Cheatsheet gráficos](fuentes/ggplot2-cheatsheet-2.1-Spanish.pdf)

# [Notas de clase](https://diegokoz.github.io/intro_ds_bookdown/)




# Temario

## __Eje 1. Programación en R__

### __clase 1__: Introducción al entorno R:
	
- [Explicación](clase_1/01_explicacion.nb.html)
- [Práctica Guiada](clase_1/01_practica_guiada.nb.html)
- [Pŕactica independiente](clase_1/01_practica_independiente.nb.html)

### __clase 2__: Tidyverse:

- [Explicación](clase_2/02_explicacion.nb.html)
- [Práctica Guiada](clase_2/02_practica_guiada.nb.html)
- [Pŕactica independiente](clase_2/02_practica_independiente.nb.html)

### __clase 3__: Programación funcional

- [Explicación](clase_3/03_explicacion.nb.html)
- [Práctica Guiada](clase_3/03_practica_guiada.nb.html)
- [Pŕactica independiente](clase_3/03_practica_independiente.nb.html)

## __Eje 2. Presentación de resultados__

### __clase 4__: Visualización de la información

- [Explicación](clase_4/04_explicacion.nb.html)
- [Práctica Guiada](clase_4/04_practica_guiada.nb.html)
- [Pŕactica independiente](clase_4/04_practica_independiente.nb.html)

### __clase 5__: Documentación en R

- [Explicación](clase_5/05_explicacion.nb.html)
- [Práctica Guiada](clase_5/05_practica_guiada.nb.html)
- [Práctica Guiada Dashboard](clase_5/05_practica_guiada_dashboard.html)
- [Pŕactica independiente](clase_5/05_practica_independiente.nb.html)

### __clase 6__: Shiny

- [Explicación](clase_6/06_explicacion.nb.html)
- [Práctica Guiada](clase_6/06_practica_guiada.nb.html)
- [Pŕactica independiente](clase_6/06_practica_independiente.nb.html)
- [Ejemplos](clase_6/README.md)


## __Eje 3. Estadística__


### __clase 7__: Estadística descriptiva

- [Explicación](clase_7/07_explicacion.nb.html)
- [Práctica Guiada](clase_7/07_practica_guiada.nb.html)
- [Práctica independiente](clase_7/07_practica_independiente.nb.html)

### __clase 8__: Correlación y Modelo Lineal

- [Explicación](clase_8/08_explicacion.nb.html)
- [Práctica Guiada](clase_8/08_practica_guiada.nb.html)
- [Pŕactica independiente](clase_8/ejercicios_modelo_lineal)


## __Eje 4. Clases temáticas__


### __clase 9__: Análisis de encuestas


- Explicación
- Práctica Guiada
- Pŕactica independiente


### __clase 10__: Text Mining 

- [Explicación](clase_10/10_explicacion.nb.html)
- [Práctica Guiada](clase_10/10_practica_guiada.nb.html)
- [Práctica independiente](clase_10/10_practica_independiente.nb.html)



### __clase 11__: Mapas

- Explicación
- Práctica Guiada
- [Mapa de la Ciencia de Datos](clase_11/11_data_sience_map.nb.html)


## Bibliografía


- GWickham, H., & Grolemund, G. (2016). R for data science: import, tidy, transform, visualize, and model data. " O'Reilly Media, Inc.". https://es.r4ds.hadley.nz/
- James, G., Witten, D., Hastie, T., & Tibshirani, R. (2013). An introduction to statistical learning. New York: springer. http://faculty.marshall.usc.edu/gareth-james/ISL/
- Wickham, Hadley. ggplot2: elegant graphics for data analysis. Springer, 2016. https://ggplot2-book.org/


#### Librerias a instalar

```
install.packages(c("tidyverse","openxlsx","xlsx",'ggplot2','GGally','ggridges','treemapify','esquisse','cowplot','ggthemes', 'ggrepel', 'ggalt', 'kableExtra', 'fs', 'purrr', 'rmarkdown', 'modelr', 'plot3D','viridis','lubridate','gapminder'))
```





