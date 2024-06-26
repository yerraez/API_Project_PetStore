# Proyecto de Pruebas con Karate

Este proyecto utiliza el framework de pruebas Karate para la ejecución y reporte de pruebas. A continuación, se detallan las instrucciones necesarias para configurar y ejecutar el proyecto correctamente.

## Requisitos Previos

Antes de ejecutar este proyecto, asegúrate de tener instaladas las siguientes herramientas:

- **Karate test framework** versión **1.3.1**
- **Cucumber Report** versión **5.7.5**
- **Java** versión **17**
- **Gradle** versión **8.3**
- **JUnit** versión **5.9.2**

## Estructura del Proyecto

Este proyecto consta de la siguiente estructura de carpetas:
- src
  - test
    - java
      - karate.e2e => aqui se encuentra el archivo Runner del proyecto
    - resources
      - body => se encuentra el body en formato json de la petición para crear una orden
      - karate/e2e => se encuentra el script de karate en donde están los escenarios a ejecutarse.
      - response => se encuentra el response de creacion de orden exitosa en formato json
- target => en esta carpeta se encuentran los reportes que se generan cuando se ejecuta el script. 


## Compilación del Proyecto

Para compilar adecuadamente el proyecto, sigue estos pasos:

1. Asegúrate de ejecutar el archivo `build.gradle` previamente para resolver todas las dependencias necesarias.
2. Verifica que todas las herramientas mencionadas en la sección de [Requisitos Previos](#requisitos-previos) estén instaladas para evitar conflictos durante la compilación y ejecución.

## Ejecución de las Pruebas

Para ejecutar el proyecto, sigue estos pasos:

1. Navega a la carpeta raíz del proyecto en la terminal.
2. Ejecuta el siguiente comando:

   ```bash
   gradle test --tests 'karate.e2e.ManageOrdersRunner'
Este comando ejecutará el archivo ManageOrdersRunner.java, que contiene la configuración necesaria para correr los escenarios definidos en los scripts de Karate.

# Visualización de Reportes
Después de ejecutar las pruebas, puedes visualizar los reportes generados en la carpeta target/karate-reports. Busca los archivos con la extensión .html y ábrelos en tu navegador preferido para revisar los resultados de las pruebas.