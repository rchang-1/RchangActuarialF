## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Sampling Error
#' @description Computes the sampling error.
#' @param sm Sample mean.
#' @param mu Population mean.
#' @return The sampling error.
#' @examples
#' # Example usage:
# sampling.error(sm=0.45, mu=0.5)
#' @export

sampling.error <- function(sm, mu) {
  abs(sm - mu)
}

# Explicación en español:
# Esta función `sampling.error` calcula el error de muestreo.
#
# Parámetros:
# - `sm`: Media muestral.
# - `mu`: Media poblacional.
#
# Salida:
# - El error de muestreo.
#
# Ejemplos Aplicados:
# 1. Calcular el error de muestreo con una media muestral de 0.45 y una media poblacional de 0.5.
#    sampling.error(sm=0.45, mu=0.5)
