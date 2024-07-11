## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing HPR, the holding period return
#' @description Computes the holding period return (HPR) based on the effective annual rate (EAR) and the number of days remaining until maturity.
#'
#' @param ear Effective annual rate.
#' @param t Number of days remaining until maturity.
#'
#' @return Holding period return (HPR).
#'
#' @examples
#' # Example usage:
# ear2hpr(ear=0.05039, t=150)
#'
#' @seealso hpr2ear ear hpr
#'
#' @export
ear2hpr <- function(ear, t) {
  hpr <- (1 + ear)^(t/365) - 1
  return(hpr)
}
# Explicación en español:
# Esta función `ear2hpr` calcula el retorno del período de tenencia (HPR) basado en la tasa anual efectiva (EAR) y el número de días restantes hasta el vencimiento.
#
# Parámetros:
# - `ear`: Tasa anual efectiva.
# - `t`: Número de días restantes hasta el vencimiento.
#
# Retorno:
# Retorno del período de tenencia (HPR).
#
# Ejemplos:
# 1. Calcular el HPR con una tasa anual efectiva de 0.05039 y 150 días restantes:
#    ear2hpr(ear=0.05039, t=150)
