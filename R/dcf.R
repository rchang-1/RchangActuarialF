## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Discounted Cash Flow (DCF) Function
#' @description Calculates the present value of future cash flows using the Discounted Cash Flow method.
#' @param cash_flows A numeric vector of expected future cash flows.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# cash_flows <- c(10, 12, 15, 18, 20)
# discount_rate <- 0.08
# dcf(cash_flows, discount_rate)
#' @export
#' Discounted Cash Flow (DCF) Function
dcf <- function(cash_flows, discount_rate) {
  n <- length(cash_flows)
  sum(cash_flows / (1 + discount_rate)^(1:n))
}

# Explicación en español:
# Esta función `dcf` calcula el valor presente de los flujos de efectivo futuros utilizando el método de Flujo de Caja Descontado (DCF),
# dados los flujos de efectivo futuros esperados y la tasa de descuento (tasa de retorno requerida).
#
# Parámetros:
# - `cash_flows`: Un vector numérico de los flujos de efectivo futuros esperados.
# - `discount_rate`: La tasa de descuento (tasa de retorno requerida).
#
# Salida:
# - El valor estimado justo de la acción.
#
# Ejemplos Aplicados:
# 1. Calcular el valor presente de flujos de efectivo futuros con flujos de efectivo de [10, 12, 15, 18, 20] y una tasa de descuento del 8%.
#    cash_flows <- c(10, 12, 15, 18, 20)
#    discount_rate <- 0.08
#    dcf(cash_flows, discount_rate)
