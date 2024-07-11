#' ## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Bond-Equivalent Yield (BEY), 2 x the Semiannual Discount Rate
#'
#' @title Bond-Equivalent Yield (BEY)
#' @description Computes the bond-equivalent yield (BEY), which is 2 times the semiannual discount rate.
#'
#' @param hpr Holding period return.
#' @param t Number of months remaining until maturity.
#'
#' @return Bond-equivalent yield (BEY).
#'
#' @seealso hpr
#'
#' @examples
#' # Example usage:
# hpr2bey(hpr = 0.02, t = 3)
#'
#' @export
hpr2bey <- function(hpr, t) {
  bey <- hpr * (12 / t)
  return(bey)
}
# Explicación en español:
# Esta función `hpr2bey` calcula el rendimiento equivalente al bono (BEY), que es 2 veces la tasa de descuento semestral.
#
# Parámetros:
# - `hpr`: Rendimiento del período de tenencia.
# - `t`: Número de meses restantes hasta el vencimiento.
#
# Retorno:
# Rendimiento equivalente al bono (BEY).
#
# Ejemplos:
# 1. Calcular el BEY con hpr = 0.02 y t = 3:
#    hpr2bey(hpr = 0.02, t = 3)
