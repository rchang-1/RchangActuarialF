## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Bank Discount Yield (BDY)
#' @description Computes the bank discount yield (BDY) for a T-bill.
#' @param d The dollar discount, which is equal to the difference between the face value of the bill and the purchase price.
#' @param f The face value (par value) of the bill.
#' @param t Number of days remaining until maturity.
#' @return The bank discount yield as a decimal.
#' @examples
#' # Example usage:
# bdy(d = 1500, f = 100000, t = 120)
#' @export

bdy <- function(d, f, t) {
  (d / f) * (360 / t)
}

# Explicación en español:
# Esta función `bdy` calcula el rendimiento de descuento bancario (BDY) para un T-bill, dado el descuento en dólares,
# el valor nominal del T-bill y el número de días hasta el vencimiento.
#
# Parámetros:
# - `d`: El descuento en dólares, que es igual a la diferencia entre el valor nominal del T-bill y el precio de compra.
# - `f`: El valor nominal (valor a la par) del T-bill.
# - `t`: Número de días restantes hasta el vencimiento.
#
# Ejemplos Aplicados:
# 1. Calcular el BDY con un descuento de $1500, un valor nominal de $100,000 y 120 días hasta el vencimiento.
#    bdy(d = 1500, f = 100000, t = 120)
