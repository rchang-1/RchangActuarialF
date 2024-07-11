## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Coefficient of Variation
#' @description Computes the coefficient of variation.
#' @param sd Standard deviation.
#' @param avg Average value.
#' @return The coefficient of variation as a decimal.
#' @examples
#' # Example usage:
# coefficient.variation(sd = 0.15, avg = 0.39)
#' @export

coefficient.variation <- function(sd, avg) {
  sd / avg
}

# Explicación en español:
# Esta función `coefficient.variation` calcula el coeficiente de variación, que es una medida de dispersión relativa.
#
# Parámetros:
# - `sd`: Desviación estándar.
# - `avg`: Valor promedio.
#
# Ejemplos Aplicados:
# 1. Calcular el coeficiente de variación con una desviación estándar de 0.15 y un valor promedio de 0.39.
#    coefficient.variation(sd = 0.15, avg = 0.39)
