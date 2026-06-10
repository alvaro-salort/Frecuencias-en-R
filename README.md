# 📊 Tablas de Frecuencia en R — Paso a Paso

[![R Project](https://img.shields.io/badge/R-278A12?style=for-the-badge&logo=R&logoColor=white)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=for-the-badge&logo=RStudio&logoColor=white)](https://posit.co/products/open-source/rstudio/)
[![Idioma](https://img.shields.io/badge/Idioma-Espa%C3%B1ol-brightgreen?style=for-the-badge)](#)
[![Licencia](https://img.shields.io/badge/Licencia-MIT-yellow.svg?style=for-the-badge)](#)

¡Hola! Te doy la bienvenida a este repositorio. Acá vas a encontrar todo el código y la explicación paso a paso para aprender a construir **tablas de frecuencias** en **R (R Base)**, procesando los datos de forma limpia y estructurada.

Este proyecto fue diseñado como material de apoyo para el video tutorial de YouTube, pensado especialmente para estudiantes de la **Tecnicatura Universitaria en Desarrollo de Software (ITU)** y cualquier persona que esté dando sus primeros pasos en estadística general o análisis de datos con R.

---
## 📂 Contenido del Repositorio

El repositorio está organizado de la siguiente manera:

* **`tablas_frecuencia.R`**: El script de R limpio y listo para ejecutar en RStudio.
* **`DatosNominales.xlsx`**: El archivo excel con los datos de los 103 programadores.

---

## 🛠️ ¿Cómo usar este proyecto?

### Requisitos Previos
Necesitás tener instalado en tu computadora:
1. **R** (versión 4.0 o superior recomendada): [Descargar R](https://cran.r-project.org/)
2. **RStudio**: [Descargar RStudio](https://posit.co/download/rstudio-desktop/)

### Librerías Utilizadas
Para poder cargar el archivo de datos directamente desde una planilla de Excel de forma visual, el script utiliza el paquete:
* `readxl`

*(El script incluye una validación automática: si no tenés la librería instalada, la descarga por vos la primera vez que lo ejecutás).*

---

## 📊 Tipos de Variables y Estructura de las Tablas

El proyecto procesa una muestra de **103 programadores** encuestados sobre sus hábitos laborales. El script analiza tres variables según su tipo y construye las tablas utilizando las siguientes columnas de R Base:

| Variable en el Dataset | Tipo de Variable | Columnas de la Tabla en R |
| :--- | :--- | :--- |
| **`Plataforma_Trabajo`** | Cualitativa Nominal | `Frec_Absoluta`, `Frec_Relativa` (Sin acumular) |
| **`Tickets_Soporte`** | Cuantitativa Discreta | `Frec_Absoluta`, `Frec_Relativa`, `Frec_Acumulada` |
| **`Tiempo_Conexion`** | Cuantitativa Continua | `Frec_Absoluta`, `Frec_Relativa`, `Frec_Acumulada` (Datos agrupados por intervalos usando la Regla de Sturges) |

### Significado de las Columnas del Script:
* **`Frec_Absoluta`**: Conteo físico de la cantidad de casos observados para esa categoría o intervalo.
* **`Frec_Relativa`**: Proporción que representa cada categoría respecto al total de la muestra ($Frec\_Absoluta / n$).
* **`Frec_Acumulada`**: Suma acumulada paso a paso de las frecuencias absolutas. Indica cuántas observaciones se encuentran hasta ese nivel inclusive.

---

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Podés descargar el código, modificarlo y usarlo libremente para tus trabajos prácticos, proyectos personales o clases.

---

## 🤝 Créditos y Agradecimientos

Este trabajo fue realizado para la cátedra de Álgebra y Estadística de la **Tecnicatura Universitaria en Desarrollo de Software (ITU)**. 

Si te sirvió el material, ¡agradezco un montón tu estrella ⭐ en este repositorio!
