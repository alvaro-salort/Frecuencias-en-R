if (!require(readxl)) install.packages("readxl")
library(readxl)
ruta_archivo <- file.choose()
datos <- read_excel(ruta_archivo)

head(datos)

frec_abs_plataforma <- table(datos$Plataforma_Trabajo)

# Calculamos Frecuencia Relativa usando prop.table() sobre la absoluta
frec_rel_plataforma <- prop.table(frec_abs_plataforma)
tabla_plataforma <- cbind(
  Frec_Absoluta = frec_abs_plataforma,
  Frec_Relativa = frec_rel_plataforma
)

print("--- Tabla de Frecuencias: Plataforma de Trabajo ---")
print(tabla_plataforma)


# VARIABLE 2: Tickets_Soporte (Numérica)

frec_abs_tickets <- table(datos$Tickets_Soporte)
frec_rel_tickets <- prop.table(frec_abs_tickets)
frec_acum_tickets <- cumsum(frec_abs_tickets)

tabla_tickets <- cbind(
  Frec_Absoluta = frec_abs_tickets,
  Frec_Relativa = frec_rel_tickets,
  Frec_Acumulada = frec_acum_tickets
)

print("--- Tabla de Frecuencias: Tickets de Soporte ---")
print(tabla_tickets)


# VARIABLE 3: Tiempo_Conexion (Numérica Continua - Agrupada en clases)

n <- length(datos$Tiempo_Conexion)
k <- ceiling(1 + 3.322 * log10(n))

rango <- range(datos$Tiempo_Conexion)
amplitud <- (rango[2] - rango[1]) / k

limites <- seq(from = rango[1], to = rango[2], by = amplitud)

clases_tiempo <- cut(datos$Tiempo_Conexion, breaks = limites, right = FALSE, include.lowest = TRUE)

frec_abs_tiempo <- table(clases_tiempo)
frec_rel_tiempo <- prop.table(frec_abs_tiempo)
frec_acum_tiempo <- cumsum(frec_abs_tiempo)

tabla_tiempo <- cbind(
  Frec_Absoluta = frec_abs_tiempo,
  Frec_Relativa = frec_rel_tiempo,
  Frec_Acumulada = frec_acum_tiempo
)

print("--- Tabla de Frecuencias: Tiempo de Conexión (Agrupado) ---")
print(tabla_tiempo)
