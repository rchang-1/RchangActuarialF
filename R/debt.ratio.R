## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Debt Ratio
#' @description Computes the debt ratio – Solvency ratios measure the firm’s ability to satisfy its long-term obligations.
#' @param td Total debt.
#' @param ta Total assets.
#' @return The debt ratio as a decimal.
#' @examples
#' # Example usage:
# debt.ratio(td = 6000, ta = 20000)
#' @export

debt.ratio <- function(td, ta) {
  td / ta
}

# Explicación en español:
# Esta función `debt.ratio` calcula el ratio de deuda, que mide la capacidad de la empresa para satisfacer sus obligaciones a largo plazo.
#
# Parámetros:
# - `td`: Deuda total.
# - `ta`: Activos totales.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio de deuda con una deuda total de $6000 y activos totales de $20000.
#    debt.ratio(td = 6000, ta = 20000)
