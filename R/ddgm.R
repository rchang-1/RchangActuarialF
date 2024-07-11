## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Discounted Dividend Growth Model (DDGM) Function
#' @description Calculates the fair value of a stock using the Discounted Dividend Growth Model.
#' @param dividend The current dividend per share.
#' @param growth_rate The expected constant growth rate of dividends.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# dividend <- 2.5
# growth_rate <- 0.04
# discount_rate <- 0.1
# ddgm(dividend, growth_rate, discount_rate)
#' @export

# Discounted Dividend Growth Model (DDGM) Function
ddgm <- function(dividend, growth_rate, discount_rate) {
  dividend * (1 + growth_rate) / (discount_rate - growth_rate)
}

# Explicación en español:
# Esta función `ddgm` calcula el valor justo de una acción utilizando el Modelo de Crecimiento de Dividendos Descontados (DDGM),
# dados el dividendo actual por acción, la tasa de crecimiento esperada constante de los dividendos y la tasa de descuento
# (tasa de retorno requerida).
#
# Parámetros:
# - `dividend`: El dividendo actual por acción.
# - `growth_rate`: La tasa de crecimiento esperada constante de los dividendos.
# - `discount_rate`: La tasa de descuento (tasa de retorno requerida).
#
# Salida:
# - El valor estimado justo de la acción.
#
# Ejemplos Aplicados:
# 1. Calcular el valor justo de una acción con un dividendo actual de $2.5, una tasa de crecimiento de dividendos del 4%,
#    y una tasa de descuento del 10%.
#    dividend <- 2.5
#    growth_rate <- 0.04
#    discount_rate <- 0.1
#    ddgm(dividend, growth_rate, discount_rate)
