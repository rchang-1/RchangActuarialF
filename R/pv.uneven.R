## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Present Value of Uneven Cash Flows
#' @description Calculates the present value of a series of uneven cash flows.
#' @param r The discount rate.
#' @param cf A vector of cash flows.
#' @return The present value of the cash flows.
#' @examples
#' # Example usage:
# pv.uneven(r=0.1, cf=c(-1000, -500, 0, 4000, 3500, 2000))
#' @export

pv.uneven <- function(r, cf) {
  sum(cf / (1 + r)^(seq_along(cf) - 1))
}

# Explicación en español:
# Esta función `pv.uneven` calcula el valor presente de una serie de flujos de caja desiguales,
# dado una tasa de descuento y un vector de flujos de caja.
#
# Parámetros:
# - `r`: La tasa de descuento.
# - `cf`: Un vector de flujos de caja.
#
# Salida:
# - El valor presente de los flujos de caja.
#
# Ejemplos Aplicados:
# 1. Calcular el valor presente de una serie de flujos de caja desiguales con una tasa de descuento del 10%.
#    pv.uneven(r=0.1, cf=c(-1000, -500, 0, 4000, 3500, 2000))
