# 📊 Tablas de Frecuencia en R — Paso a Paso

[![R Project](https://img.shields.io/badge/R-278A12?style=for-the-badge&logo=R&logoColor=white)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=for-the-badge&logo=RStudio&logoColor=white)](https://posit.co/products/open-source/rstudio/)
[![Idioma](https://img.shields.io/badge/Idioma-Espa%C3%B1ol-brightgreen?style=for-the-badge)](#)
[![Licencia](https://img.shields.io/badge/Licencia-MIT-yellow.svg?style=for-the-badge)](#)

¡Hola! Te doy la bienvenida a este repositorio. Aquí vas a encontrar todo el código y la explicación paso a paso para aprender a construir **tablas de frecuencias** en **R (R Base)**, procesando los datos de forma limpia y estructurada.

Este proyecto fue diseñado como material de apoyo para el video tutorial de YouTube, pensado especialmente para estudiantes de la **Tecnicatura Universitaria en Desarrollo de Software (ITU)** y cualquier persona que esté dando sus primeros pasos en estadística general o análisis de datos con R.

---

## 📺 Video Tutorial
Si querés ver la explicación en formato video, donde recorremos el código línea por línea y analizamos los resultados en la consola, podés hacer clic acá:

📌 **[Ver Tutorial en YouTube](https://youtube.com) (¡No olvides suscribirte y dejar tu like!)**

---

## 📂 Contenido del Repositorio

El repositorio está organizado de la siguiente manera:

* **`tablas_frecuencia.R`**: El script de R limpio y listo para ejecutar en RStudio.
* **`guion_explicativo.md`**: El guión escrito completo que sirve de guía paso a paso con los textos del video.
* **Tablas Generadas (CSV)**: Las tablas de frecuencia resultantes que exporta el script de forma automática:
    * `tabla_frec_plataforma.csv` (Cualitativa Nominal)
    * `tabla_frec_tickets.csv` (Cuantitativa Discreta)
    * `tabla_frec_tiempo.csv` (Cuantitativa Continua - Sturges)

---

## 🛠️ ¿Cómo usar este proyecto?

### Requisitos Previos
Necesitás tener instalado en tu computadora:
1. **R** (versión 4.0 o superior recomendada): [Descargar R](https://cran.r-project.org/)
2. **RStudio**: [Descargar RStudio](https://posit.co/download/rstudio-desktop/)

### Librerías Utilizadas
Para poder cargar el archivo de datos directamente desde una planilla de Excel de forma visual, el script utiliza el paquete:
* `readxl`

*(Podés instalarlo ejecutando `install.packages("readxl")` en la consola de RStudio antes de correr el script).*

---

## 📊 Tipos de Variables y Notación Utilizada

El proyecto procesa una muestra de **103 programadores** encuestados sobre sus hábitos laborales, analizando tres tipos de variables según la teoría estadística clásica:

| Variable | Tipo de Variable | Método / Notación | Resultados |
| :--- | :--- | :--- | :--- |
| **`Plataforma_Trabajo`** | Cualitativa Nominal | Datos no agrupados sin acumular ($x_i, f_i, f_r$) | `tabla_frec_plataforma.csv` |
| **`Tickets`** | Cuantitativa Discreta | Datos no agrupados con acumuladas ($x_i, f_i, F_i, f_r, F_r$) | `tabla_frec_tickets.csv` |
| **`Tiempo`** | Cuantitativa Continua | Datos agrupados en intervalos (Regla de Sturges) | `tabla_frec_tiempo.csv` |

### Simbología Utilizada:
* $x_i$: Valor de la variable o marca de clase (punto medio del intervalo).
* $f_i$: Frecuencia absoluta simple (conteo exacto de casos).
* $F_i$: Frecuencia absoluta acumulada.
* $f_r$: Frecuencia relativa simple (proporción).
* $F_r$: Frecuencia relativa acumulada.

---

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Podés descargar el código, modificarlo y usarlo libremente para tus trabajos prácticos, proyectos personales o clases.

---

## 🤝 Créditos y Agradecimientos

Este trabajo fue realizado para la cátedra de Estadística de la **Tecnicatura Universitaria en Desarrollo de Software (ITU)**. 

Si te sirvió el material, ¡agradezco un montón tu estrella ⭐ en este repositorio!
