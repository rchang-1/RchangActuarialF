## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Estimate Future Value of an Annuity
#' @description Estimates the future value of an annuity based on the discount rate, number of periods, payment per period, and payment type.
#'
#' @param r Discount rate, or the interest rate at which the amount will be compounded each period.
#' @param n Number of periods.
#' @param pmt Payment per period.
#' @param type Payments occur at the end of each period (type=0); payments occur at the beginning of each period (type=1).
#'
#' @return Future value of the annuity.
#'
#' @examples
#' # Example usage:
#' fv.annuity(r=0.03, n=12, pmt=-1000)
# fv.annuity(r=0.03, n=12, pmt=-1000, type=1)
#'
#' @seealso fv
#'
#' @export
fv.annuity <- function(r, n, pmt, type = 0) {
  if (type == 0) {
    fv_annuity <- pmt * ((1 + r)^n - 1) / r
  } else {
    fv_annuity <- pmt * ((1 + r)^n - 1) * (1 + r) / r
  }
  return(fv_annuity)
}
# Explicación en español:
# Esta función `fv.annuity` estima el valor futuro de una anualidad basada en la tasa de descuento, número de períodos, pago por período, y el tipo de pago.
#
# Parámetros:
# - `r`: Tasa de descuento, o la tasa de interés a la cual se capitalizará el monto en cada período.
# - `n`: Número de períodos.
# - `pmt`: Pago por período.
# - `type`: Los pagos ocurren al final de cada período (type=0); los pagos ocurren al inicio de cada período (type=1).
#
# Retorno:
# Valor futuro de la anualidad.
#
# Ejemplos:
# 1. Estimar el valor futuro de una anualidad con una tasa de descuento de 0.03, 12 períodos, y pago por período de -1000:
#    fv.annuity(r=0.03, n=12, pmt=-1000)
# 2. Estimar el valor futuro de una anualidad con una tasa de descuento de 0.03, 12 períodos, pago por período de -1000, y pagos al inicio de cada período:
#    fv.annuity(r=0.03, n=12, pmt=-1000, type=1)
