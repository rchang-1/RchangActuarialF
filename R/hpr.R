## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#'#' Computing HPR, the Holding Period Return
#'
#' @title Holding Period Return
#' @description Computes the holding period return (HPR) based on beginning and ending values and cash flows received.
#'
#' @param ev Ending value.
#' @param bv Beginning value.
#' @param cfr Cash flow received.
#'
#' @return Holding period return.
#'
#' @seealso twrr hpr2ear hpr2mmy
#'
#' @examples
#' # Example usage:
# hpr(ev = 33, bv = 30, cfr = 0.5)
#'
#' @export
hpr <- function(ev, bv, cfr = 0) {
  hpr <- (ev - bv + cfr) / bv
  return(hpr)
}
# Explicación en español:
# Esta función `hpr` calcula el rendimiento del período de tenencia (HPR) basado en los valores inicial y final y los flujos de efectivo recibidos.
#
# Parámetros:
# - `ev`: Valor final.
# - `bv`: Valor inicial.
# - `cfr`: Flujo de efectivo recibido.
#
# Retorno:
# Rendimiento del período de tenencia.
#
# Ejemplos:
# 1. Calcular el HPR con ev = 33, bv = 30, cfr = 0.5:
#    hpr(ev = 33, bv = 30, cfr = 0.5)
