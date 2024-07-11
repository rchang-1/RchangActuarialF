## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Quick Ratio
#' @description Liquidity ratios measure the firm’s ability to satisfy its short-term obligations as they come due.
#' @param cash The amount of cash.
#' @param ms Marketable securities.
#' @param rc Receivables.
#' @param cl Current liabilities.
#' @return The quick ratio.
#' @examples
#' # Example usage:
# quick.ratio(cash=3000, ms=2000, rc=1000, cl=2000)
#' @export

quick.ratio <- function(cash, ms, rc, cl) {
  (cash + ms + rc) / cl
}

# Explicación en español:
# Esta función `quick.ratio` calcula el ratio rápido, un indicador de liquidez que mide la capacidad de la empresa
# para satisfacer sus obligaciones a corto plazo a medida que vencen.
#
# Parámetros:
# - `cash`: La cantidad de efectivo.
# - `ms`: Valores negociables.
# - `rc`: Cuentas por cobrar.
# - `cl`: Pasivos corrientes.
#
# Salida:
# - El ratio rápido.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio rápido con $3000 en efectivo, $2000 en valores negociables, $1000 en cuentas por cobrar,
#    y $2000 en pasivos corrientes.
#    quick.ratio(cash=3000, ms=2000, rc=1000, cl=2000)
