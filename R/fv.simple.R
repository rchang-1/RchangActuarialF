## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Estimate Future Value of a Single Sum
#' @description Estimates the future value (FV) of a single sum based on the discount rate, number of periods, and present value.
#'
#' @param r Discount rate, or the interest rate at which the amount will be compounded each period.
#' @param n Number of periods.
#' @param pv Present value.
#'
#' @return Future value (FV) of the single sum.
#'
#' @examples
#' # Example usage:
#' fv.simple(0.08, 10, -300)
# fv.simple(r=0.04, n=20, pv=-50000)
#'
#' @seealso fv
#'
#' @export
fv.simple <- function(r, n, pv) {
  fv_simple <- pv * (1 + r)^n
  return(fv_simple)
}
# Explicación en español:
# Esta función `fv.simple` estima el valor futuro (FV) de una suma única basada en la tasa de descuento, número de períodos, y el valor presente.
#
# Parámetros:
# - `r`: Tasa de descuento, o la tasa de interés a la cual se capitalizará el monto en cada período.
# - `n`: Número de períodos.
# - `pv`: Valor presente.
#
# Retorno:
# Valor futuro (FV) de la suma única.
#
# Ejemplos:
# 1. Estimar el valor futuro de una suma única con una tasa de descuento de 0.08, 10 períodos, y valor presente de -300:
#    fv.simple(0.08, 10, -300)
# 2. Estimar el valor futuro de una suma única con una tasa de descuento de 0.04, 20 períodos, y valor presente de -50000:
#    fv.simple(r=0.04, n=20, pv=-50000)
