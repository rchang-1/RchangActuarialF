## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Total Debt-to-Equity Ratio
#' @description Solvency ratios measure the firm’s ability to satisfy its long-term obligations.
#' @param td Total debt.
#' @param te Total equity.
#' @return The total debt-to-equity ratio.
#' @examples
#' # Example usage:
# total.d2e(td=6000, te=20000)
#' @export

total.d2e <- function(td, te) {
  td / te
}

# Explicación en español:
# Esta función `total.d2e` calcula el ratio de deuda total a patrimonio, un indicador de solvencia que mide la capacidad
# de la empresa para satisfacer sus obligaciones a largo plazo.
#
# Parámetros:
# - `td`: Deuda total.
# - `te`: Patrimonio total.
#
# Salida:
# - El ratio de deuda total a patrimonio.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio de deuda total a patrimonio con una deuda total de $6000 y un patrimonio total de $20000.
#    total.d2e(td=6000, te=20000)
