## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Money Market Yield (MMY)
#' @description Computes the money market yield (MMY) for a T-bill.
#' @param bdy The bank discount yield.
#' @param t Number of days remaining until maturity.
#' @return The money market yield as a decimal.
#' @examples
#' # Example usage:
# bdy2mmy(bdy = 0.045, t = 120)
#' @export

bdy2mmy <- function(bdy, t) {
  bdy * (365 / 360) * (360 / t)
}

# Explicación en español:
# Esta función `bdy2mmy` calcula el rendimiento del mercado monetario (MMY) para un T-bill, dado el rendimiento de descuento bancario
# y el número de días hasta el vencimiento.
#
# Parámetros:
# - `bdy`: El rendimiento de descuento bancario.
# - `t`: Número de días restantes hasta el vencimiento.
#
# Ejemplos Aplicados:
# 1. Calcular el MMY con un rendimiento de descuento bancario de 0.045 y 120 días hasta el vencimiento.
#    bdy2mmy(bdy = 0.045, t = 120)
