#' ## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#'#' Convert Holding Period Return to Effective Annual Rate
#'
#' @title Effective Annual Rate (EAR)
#' @description Converts the holding period return (HPR) to the effective annual rate (EAR).
#'
#' @param hpr Holding period return.
#' @param t Number of days remaining until maturity.
#'
#' @return Effective annual rate (EAR).
#'
#' @seealso ear
#' @seealso hpr
#' @seealso ear2hpr
#'
#' @examples
#' # Example usage:
# hpr2ear(hpr = 0.015228, t = 120)
#'
#' @export
hpr2ear <- function(hpr, t) {
  ear <- (1 + hpr)^(365 / t) - 1
  return(ear)
}
# Explicación en español:
# Esta función `hpr2ear` convierte el rendimiento del período de tenencia (HPR) a la tasa anual efectiva (EAR).
#
# Parámetros:
# - `hpr`: Rendimiento del período de tenencia.
# - `t`: Número de días restantes hasta el vencimiento.
#
# Retorno:
# Tasa anual efectiva (EAR).
#
# Ejemplos:
# 1. Convertir HPR a EAR con hpr = 0.015228 y t = 120:
#    hpr2ear(hpr = 0.015228, t = 120)
