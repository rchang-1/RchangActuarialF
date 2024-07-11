## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing the Future Value of an Uneven Cash Flow Series
#' @description Computes the future value of an uneven cash flow series based on the stated annual rate and the cash flow series.
#'
#' @param r Stated annual rate.
#' @param cf Uneven cash flow series.
#'
#' @return Future value of the uneven cash flow series.
#'
#' @examples
#' # Example usage:
# fv.uneven(r=0.1, cf=c(-1000, -500, 0, 4000, 3500, 2000))
#'
#' @seealso fv.simple
#'
#' @export
fv.uneven <- function(r, cf) {
  n <- length(cf)
  fv_uneven <- sum(cf * (1 + r)^(n:1))
  return(fv_uneven)
}
# Explicación en español:
# Esta función `fv.uneven` calcula el valor futuro de una serie de flujos de caja desiguales basada en la tasa anual declarada y la serie de flujos de caja.
#
# Parámetros:
# - `r`: Tasa anual declarada.
# - `cf`: Serie de flujos de caja desiguales.
#
# Retorno:
# Valor futuro de la serie de flujos de caja desiguales.
#
# Ejemplos:
# 1. Calcular el valor futuro de una serie de flujos de caja desiguales con una tasa anual de 0.1 y flujos de caja de c(-1000, -500, 0, 4000, 3500, 2000):
#    fv.uneven(r=0.1, cf=c(-1000, -500, 0, 4000, 3500, 2000))
