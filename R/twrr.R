## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing TWRR
#' @description Computes the time-weighted rate of return (TWRR).
#' @param ev Ordered ending value list.
#' @param bv Ordered beginning value list.
#' @param cfr Ordered cash flow received list.
#' @return The time-weighted rate of return.
#' @examples
#' # Example usage:
# twrr(ev=c(120, 260), bv=c(100, 240), cfr=c(2, 4))
#' @export

twrr <- function(ev, bv, cfr) {
  prod((ev + cfr) / bv)^(1 / length(ev)) - 1
}

# Explicación en español:
# Esta función `twrr` calcula la tasa de retorno ponderada por tiempo (TWRR).
#
# Parámetros:
# - `ev`: Lista ordenada de valores finales.
# - `bv`: Lista ordenada de valores iniciales.
# - `cfr`: Lista ordenada de flujos de caja recibidos.
#
# Salida:
# - La tasa de retorno ponderada por tiempo.
#
# Ejemplos Aplicados:
# 1. Calcular la tasa de retorno ponderada por tiempo con valores finales de 120 y 260, valores iniciales de 100 y 240,
#    y flujos de caja recibidos de 2 y 4.
#    twrr(ev=c(120, 260), bv=c(100, 240), cfr=c(2, 4))
