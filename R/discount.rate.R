## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Discount Rate Calculation
#' @description Computes the rate of return for each period based on given parameters.
#'
#' @param n Number of periods.
#' @param pv Present value.
#' @param fv Future value.
#' @param pmt Payment per period.
#' @param type 0 for payments at the end of each period; 1 for payments at the beginning of each period.
#'
#' @return Rate of return for each period.
#'
#' @examples
#' # Example usage:
#discount.rate(n = 5, pv = 10, fv = 600, pmt = -100, type = 0)
#'
#' @seealso fv.simple fv.annuity fv pv pmt n.period
#'
#' @export

discount.rate <- function(n, pv, fv, pmt, type = 0) {
  if (pv == 0) {
    stop("Present value (pv) cannot be zero.")
  }

  if (type == 0) {
    rate <- (fv + pmt * n - pv) / pv
  } else if (type == 1) {
    rate <- (fv + pmt * n - pv) / (pv + pmt)
  } else {
    stop("Invalid value for 'type'. Use 0 for payments at the end of each period or 1 for payments at the beginning of each period.")
  }

  return(rate)
}
# Explicación en español:
# Esta función `discount.rate` calcula la tasa de retorno para cada período con base en los parámetros proporcionados.
#
# Parámetros:
# - `n`: Número de períodos.
# - `pv`: Valor presente.
# - `fv`: Valor futuro.
# - `pmt`: Pago por período.
# - `type`: 0 para pagos al final de cada período; 1 para pagos al inicio de cada período.
#
# Retorno:
# La función retorna la tasa de retorno para cada período calculada según los parámetros dados.
#
# Ejemplos:
# 1. Calcular la tasa de retorno con 5 períodos, valor presente 0, valor futuro 600, pago por período -100, y pagos al final de cada período:
#    discount.rate(n = 5, pv = 10, fv = 600, pmt = -100, type = 0)
