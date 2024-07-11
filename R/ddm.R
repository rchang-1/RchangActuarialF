## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Dividend Discount Model (DDM) Function
#' @description Calculates the present value of future dividends using the Dividend Discount Model.
#' @param dividends A numeric vector of expected future dividends.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# dividends <- c(2.5, 2.7, 3.0, 3.2, 3.5)
# discount_rate <- 0.1
# ddm(dividends, discount_rate)
#' @export

# Dividend Discount Model (DDM) Function
ddm <- function(dividends, discount_rate) {
  n <- length(dividends)
  sum(dividends / (1 + discount_rate)^(1:n))
}

# Explicación en español:
# Esta función `ddm` calcula el valor presente de futuros dividendos utilizando el Modelo de Descuento de Dividendos (DDM),
# dados los dividendos esperados futuros y la tasa de descuento (tasa de retorno requerida).
#
# Parámetros:
# - `dividends`: Un vector numérico de los dividendos futuros esperados.
# - `discount_rate`: La tasa de descuento (tasa de retorno requerida).
#
# Salida:
# - El valor estimado justo de la acción.
#
# Ejemplos Aplicados:
# 1. Calcular el valor presente de futuros dividendos con dividendos esperados de c(2.5, 2.7, 3.0, 3.2, 3.5) y una tasa de descuento del 10%.
#    dividends <- c(2.5, 2.7, 3.0, 3.2, 3.5)
#    discount_rate <- 0.1
#    ddm(dividends, discount_rate)
