## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Interest Rate Function
#' @description Calculates the interest rate given present value (PV) and future value (FV).
#'
#' This function calculates the interest rate given the present value (PV) and future value (FV) over a specified period.
#'
#' @param pv The present value.
#' @param fv The future value.
#' @param period The period over which the interest rate is calculated.
#' @return The interest rate.
#'
#' @examples
#' # Example usage:
#' interest_rate(100, 200, 5)
#' @export

#' Función para calcular la tasa de interés dado el PV y FV
#'
#' Calcula la tasa de interés dado el valor presente (PV) y el valor futuro (FV) sobre un periodo específico.
#'
#' @param pv El valor presente.
#' @param fv El valor futuro.
#' @param period El periodo sobre el cual se calcula la tasa de interés.
#' @return La tasa de interés.
#'
#' @examples
#' # Ejemplo de uso:
# interest_rate(100, 200, 5)
#' @export
interest_rate <- function(pv, fv, period) {
  (fv / pv)^(1 / period) - 1
}
