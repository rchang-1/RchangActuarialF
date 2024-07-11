## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Estimate Future Value (FV)
#' @description Estimates the future value (FV) based on the discount rate, number of periods, present value, payment per period, and payment type.
#'
#' @param r Discount rate, or the interest rate at which the amount will be compounded each period.
#' @param n Number of periods.
#' @param pv Present value.
#' @param pmt Payment per period.
#' @param type Payments occur at the end of each period (type=0); payments occur at the beginning of each period (type=1).
#'
#' @return Future value (FV).
#'
#' @examples
#' # Example usage:
# fv(r=0.07, n=10, pv=1000, pmt=10)
#'
#' @seealso fv.simple fv.annuity pv pmt n.period discount.rate
#'
#' @export
fv <- function(r, n, pv = 0, pmt = 0, type = 0) {
  if (type == 0) {
    fv <- pv * (1 + r)^n + pmt * ((1 + r)^n - 1) / r
  } else {
    fv <- pv * (1 + r)^n + pmt * ((1 + r)^n - 1) * (1 + r) / r
  }
  return(fv)
}
# Explicación en español:
# Esta función `fv` estima el valor futuro (FV) basado en la tasa de descuento, número de períodos, valor presente, pago por período, y el tipo de pago.
#
# Parámetros:
# - `r`: Tasa de descuento, o la tasa de interés a la cual se capitalizará el monto en cada período.
# - `n`: Número de períodos.
# - `pv`: Valor presente.
# - `pmt`: Pago por período.
# - `type`: Los pagos ocurren al final de cada período (type=0); los pagos ocurren al inicio de cada período (type=1).
#
# Retorno:
# Valor futuro (FV).
#
# Ejemplos:
# 1. Estimar el valor futuro con una tasa de descuento de 0.07, 10 períodos, valor presente de 1000, y pago por período de 10:
#    fv(r=0.07, n=10, pv=1000, pmt=10)
