## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Cash Ratio
#' @description Computes the cash ratio – Liquidity ratios measure the firm’s ability to satisfy its short-term obligations as they come due.
#' @param cash Cash.
#' @param ms Marketable securities.
#' @param cl Current liabilities.
#' @return The cash ratio as a decimal.
#' @examples
#' # Example usage:
## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Cash Ratio
#' @description Computes the cash ratio – Liquidity ratios measure the firm’s ability to satisfy its short-term obligations as they come due.
#' @param cash Cash.
#' @param ms Marketable securities.
#' @param cl Current liabilities.
#' @return The cash ratio as a decimal.
#' @examples
#' # Example usage:
#' cash.ratio(cash = 3000, ms = 2000, cl = 2000)
#' @export
cash.ratio <- function(cash, ms, cl) {
  (cash + ms) / cl
}

# Explicación en español:
# Esta función `cash.ratio` calcula el ratio de efectivo, que mide la capacidad de la empresa para satisfacer sus obligaciones a corto plazo
# a medida que vencen.
#
# Parámetros:
# - `cash`: Efectivo.
# - `ms`: Valores negociables.
# - `cl`: Pasivos corrientes.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio de efectivo con $3000 en efectivo, $2000 en valores negociables y $2000 en pasivos corrientes.
#    cash.ratio(cash = 3000, ms = 2000, cl = 2000)

#' @export

cash.ratio <- function(cash, ms, cl) {
  (cash + ms) / cl
}

# Explicación en español:
# Esta función `cash.ratio` calcula el ratio de efectivo, que mide la capacidad de la empresa para satisfacer sus obligaciones a corto plazo
# a medida que vencen.
#
# Parámetros:
# - `cash`: Efectivo.
# - `ms`: Valores negociables.
# - `cl`: Pasivos corrientes.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio de efectivo con $3000 en efectivo, $2000 en valores negociables y $2000 en pasivos corrientes.
#    cash.ratio(cash = 3000, ms = 2000, cl = 2000)
