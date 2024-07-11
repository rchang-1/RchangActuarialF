## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Period Payment (PMT)
#' @description Estimates the payment per period for a loan or investment based on given parameters.
#'
#' @param r Discount rate, or the interest rate at which the amount will be compounded each period.
#' @param n Number of periods.
#' @param pv Present value.
#' @param fv Future value.
#' @param type Payments occur at the end of each period (type = 0); payments occur at the beginning of each period (type = 1).
#'
#' @return Payment per period.
#'
#' @examples
#' # Example usage:
#' pmt(r = 0.08, n = 10, pv = -1000, fv = 10)
#' pmt(r = 0.08, n = 10, pv = -1000, fv = 0)
#' pmt(r = 0.08, n = 10, pv = -1000, fv = 10, type = 1)
#'
#' @export

pmt <- function(r, n, pv, fv, type = 0) {
  if (type == 1) {
    pmt_value <- (pv * r * (1 + r)^n + fv * r) / ((1 + r)^n - 1)
  } else {
    pmt_value <- (pv * r * (1 + r)^n + fv * r) / ((1 + r)^n - 1)
  }
  return(pmt_value)
}

# Explicación en español:
# Esta función `pmt` estima el pago por período para un préstamo o inversión con base en los parámetros proporcionados.
#
# Parámetros:
# - `r`: Tasa de descuento o tasa de interés a la cual se compone el monto por período.
# - `n`: Número de períodos.
# - `pv`: Valor presente.
# - `fv`: Valor futuro.
# - `type`: Pagos al final de cada período (type = 0); pagos al inicio de cada período (type = 1).
#
# Retorno:
# Pago por período.
#
# Ejemplos:
# 1. Estimar el pago por período con una tasa de descuento del 8%, 10 períodos, un valor presente de -1000 y un valor futuro de 10:
#    pmt(r = 0.08, n = 10, pv = -1000, fv = 10)
