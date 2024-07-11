## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Current Ratio
#' @description Computes the current ratio – Liquidity ratios measure the firm’s ability to satisfy its short-term obligations as they come due.
#' @param ca Current assets.
#' @param cl Current liabilities.
#' @return The current ratio as a decimal.
#' @examples
#' # Example usage:
#' current.ratio(ca = 8000, cl = 2000)
#' @export

current.ratio <- function(ca, cl) {
  ca / cl
}

# Explicación en español:
# Esta función `current.ratio` calcula el ratio corriente, que mide la capacidad de la empresa para satisfacer sus obligaciones a corto plazo
# a medida que vencen.
#
# Parámetros:
# - `ca`: Activos corrientes.
# - `cl`: Pasivos corrientes.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio corriente con $8000 en activos corrientes y $2000 en pasivos corrientes.
#    current.ratio(ca = 8000, cl = 2000)
