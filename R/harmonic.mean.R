## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Harmonic Mean, Average Price
#'
#' @title Harmonic Mean
#' @description Computes the harmonic mean, average price over multiple periods.
#'
#' @param p Price over multiple periods.
#'
#' @return Harmonic mean.
#'
#' @examples
#' # Example usage:
# harmonic.mean(p = c(8, 9, 10))
#'
#' @export
harmonic.mean <- function(p) {
  hm <- length(p) / sum(1/p)
  return(hm)
}
# Explicación en español:
# Esta función `harmonic.mean` calcula la media armónica, que es el promedio de precios sobre múltiples períodos.
#
# Parámetros:
# - `p`: Precio sobre múltiples períodos.
#
# Retorno:
# Media armónica.
#
# Ejemplos:
# 1. Calcular la media armónica con p = c(8, 9, 10):
#    harmonic.mean(p = c(8, 9, 10))
