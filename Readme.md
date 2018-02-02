---
title: "Ficha del curso"
author: Natalia da Silva
date:  2 de Febrero, 2018
output: md_document
---

* **Curso:** Nuevas Tecnologías para el Análisis Astadístico de Aatos
* **Profesora:** Natalia da Silva, [natalia@iesta.edu.uy](mailto:natalia@iesta.edu.uy)
* **Previa reglamentaria:** Estadística Descriptiva
* **Previa sugerida:** Introdución a los Métodos Estadísticos
* **Desarrollo del curso:** 2 clases por semana de 2 horas cada una 
* **Asistencia: ** Se exigirá un mínimo de 80% de las clases   
* **Carga horaria: ** Se prevé una carga horaria total de 150 horas de dedicación 
    
	*	60 horas de clases presenciales.
	*	90 horas de dedicación domiciliaria .

## Del Curso Reglamentado 

Este curso se basa en el “aprendizaje activo” que implica involucrar al estudiante en el proceso de aprendizaje mediante diversas actividades durante el curso. Para ello el estudiante tendrá que cumplir con tareas tanto grupales como individuales, de forma presencial así como domiciliarias.

Las instancias de evaluación y la distribución de puntajes en porcentaje son:

  *	Tareas en el laboratorio en grupo 15%
	*	Tarea domiciliaria individual 20%
	*	Proyecto grupal 25%
	*	Proyecto final individual 40%

Estudiantes que obtengan al menos el 80% del total de puntos en las evaluaciones antes enumeradas exonerarán el curso. 
De no alcanzar el mínimo para exonerar, el estudiante deberá tener al menos 50% del total de puntos en las evaluaciones para tener derecho a dar examen. 

## Del Examen

Si el estudiante no alcanza las exigencias mínimas de exoneración del curso y llega a un mínimo de 50% de los puntos de clase, estará habilitado para dar un examen escrito. Dada las características de este curso que se basa en nuevas tecnologías para el análisis estadístico de datos,  el examen será en el laboratorio de informática.  El estudiante deberá obtener al menos el 50% de los puntos para aprobar  dicho examen.

## Objetivo del Curso


* El objetivo de este curso es introducir al estudiante a nuevas
tecnologías para el análisis estadístico de datos. Se presentarán distintas herramientas de forma integrada para que el estudiante pueda utilizar procedimientos compatibles y sistemáticos en las distintas etapas del análisis estadístico de datos
( importar datos, ponerlos en formatos adecuados, buscar relaciones entre ellos y comunicar los resultados). Introducir el uso de los paquetes del tidyverse es clave ya que utilizan una filosofía de programación común que garantiza la compatibilidad antes mencionada.

* La alfabetización en programación nos ayuda a hacer nuestro trabajo transparente y el
análisis reproducible. Presentaremos el concepto de investigación reproducible y herramientas que facilitan la misma. Producir trabajos reproducibles, reusables y listos para ser compartidos es una parte clave del curso.

* También discutiremos sobre la comunicación de resultados en la forma de paquetes de R así como en aplicaciones web.


## Contenido del Curso

* **R y RStudio IDE:** 
1.	R y RStudio IDE.  Repaso de conceptos básicos de programación en R. Introducción a RStudio IDE como ambiente integrado de desarrollo para R.  Trabajar en formato proyectos en RStudio.   
	

*	**Generar reportes con código en R usando R Markdown:**
 Introducción a sistemas de documentación de alta calidad, ejemplo LaTex.  Sistemas de programación que combinan texto y código como por ejemplo los paquetes de R, Sweave y  knitr.  Veremos cómo instalar y configurar el software, controlar el formato de salida del mismo así  como introducir diversos tipos de contenidos en el documento (código, figuras, tablas, fórmulas, etc). 

* **Control de versiones usando Git y trabajo colaborativo:**
Introducción a Github como una plataforma para control de versiones y trabajo colaborativo. Veremos cómo crear repositorios en GitHub, hacer modificaciones a los archivos en el repositorio (“commits”), trabajo colaborativo y como combinar versiones de distintos colaboradores. Cómo colaborar en repositorios no propios. 

* **Estructura de datos para el análisis:**
Definiremos las distintas estructuras básicas de datos y como trabajar con ellas (vectores, matrices, listas, factores, caracteres). así como los distintos tipos de datos (numérico, enteros, caracteres y doble).  Se presentarán herramientas para limpiar y ordenar bases de datos de forma sistemática y ordenada (tidyr ).  Utilizaremos el paquete dplyr e introduciremos el operador %>%. Este paquete facilitará muchas de las operaciones básicas como renombrar, trasformar o  seleccionar variables, filtrar u ordenar observaciones, combinar data frames así como agrupar y resumir información.

* **Visualización usando ggplot2:**
Se profundizará en la visualización de datos en las distintas etapas del análisis estadístico (análisis exploratorio, evaluación de modelos así como diagnóstico del mismo). Identificaremos visualizaciones apropiadas para distintas estructuras de datos. Introduciremos ggplot2 para realizar visualización estadística o de datos de alta calidad. ggplot2 es un sistema de gráficos en R basado en la gramática de gráficos.  Utilizar ggplot2 se sustenta en que hay una marco teórico basado en la  gramática de gráficos que justifica el uso de este paquete y lo hace muy poderoso ya que nos permite tanto realizar visualizaciones preexistentes  así como creer nuestras propias visualizaciones.  Definiremos los componentes básicos de toda visualización (datos,  capas,  escalas, sistema de coordenadas, facetas y temas).
* **Cómo escribir funciones y trabajar con R en estilo funcional:**
Definiremos programación funcional, presentaremos la importancia de la programación funcional para la resolución de problemas. Introduciremos al estudiante en como escribir su propia función de forma eficientes recorreremos los distintos argumentos que pueden ser definidos en las funciones entre ellos el “…”.   Aprenderemos a generalizar funciones ya existentes y como fijar los argumentos por defecto.  Escribiremos funciones para la resolución de problemas de interés.
* **Páginas interactivas, apps   y gráficos usando Shiny:**
 Shiny es un paquete de R que brinda un marco web elegante y poderoso para la construcción de aplicaciones web usando R.  Este paquete permite  la posibilidad de transformar tu análisis  en aplicaciones web interactivas  sin tener previo conocimiento de HTML, CSS o JavaScript. Usar shiny permitirá hacer páginas web interactivas donde interactuando con código en R se pueden incluir objetos de R como gráficos, tablas, resúmenes estadísticos y cualquier otro objeto de interés.  Definiremos la estructura básica de  una shinyapp, la interface de usuario (ui) que controla la apariencia de la aplicación. Por otro lado el servidor (server) esta es una función que contiene todas las instrucciones necesarias para construir la aplicación.  Como correr la aplicación  usando la función shinyApp.

	Los siguientes dos tópicos serán incluidos si queda tiempo disponible para ello:


	*	Obtener datos de la web.  Armado de base de datos con información obtenida de la web (data scraping).
	*	Distribución de datos y código. Como hacer paquetes en R para distribuir código y datos.


## Bibliografía Obligatoria
*Wickham, Hadley, and Garrett Grolemund. R for Data Science: Import, Tidy, Transform, Visualize, and Model Data. " O'Reilly Media, Inc.", 2016. [r4ds disponible online](http://r4ds.had.co.nz)
		


## Bibliografía Opcional


* Wickham, H. ggplot2: elegant graphics for data analysis. Springer, 2016.[disponible para compilar en Github](https://github.com/hadley/ggplot2-book)

* Wickham, H. Advanced r. CRC Press, 2014. [disponible online](http://adv-r.had.co.nz)

* Xie, Yihui. Dynamic Documents with R and knitr. Vol. 29. CRC Press, 2015.

