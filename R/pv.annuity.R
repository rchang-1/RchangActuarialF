## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Present Value of an Annuity (PV.Annuity)
#' @description Estimates the present value (PV) of an annuity based on given parameters.
#'
#' @param r Discount rate, or the interest rate at which the amount will be compounded each period.
#' @param n Number of periods.
#' @param pmt Payment per period.
#' @param type Payments occur at the end of each period (type = 0); payments occur at the beginning of each period (type = 1).
#'
#' @return Present value (PV) of an annuity.
#'
#' @examples
#' # Example usage:
#' pv.annuity(r = 0.03, n = 12, pmt = 1000)
#' pv.annuity(r = 0.0425, n = 3, pmt = 30000)
#'
#' @export

pv.annuity <- function(r, n, pmt, type = 0) {
  if (type == 1) {
    pv_annuity_value <- pmt * (1 - (1 + r)^(-n)) / r * (1 + r)
  } else {
    pv_annuity_value <- pmt * (1 - (1 + r)^(-n)) / r
  }
  return(pv_annuity_value)
}

# Explicación en español:
# Esta función `pv.annuity` estima el valor presente (PV) de una anualidad con base en los parámetros proporcionados.
#
# Parámetros:
# - `r`: Tasa de descuento o tasa de interés a la cual se compone el monto por período.
# - `n`: Número de períodos.
# - `pmt`: Pago por período.
# - `type`: Pag
