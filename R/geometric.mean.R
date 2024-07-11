## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Geometric Mean Return
#' @description Computes the geometric mean return based on returns over multiple periods.
#'
#' @param r Returns over multiple periods.
#'
#' @return Geometric mean return.
#'
#' @examples
#' # Example usage:
# geometric.mean(r=c(-0.0934, 0.2345, 0.0892))
#'
#' @export
geometric.mean <- function(r) {
  gm <- prod(1 + r)^(1/length(r)) - 1
  return(gm)
}
# Explicación en español:
# Esta función `geometric.mean` calcula el retorno medio geométrico basado en los retornos durante múltiples períodos.
#
# Parámetros:
# - `r`: Retornos durante múltiples períodos.
#
# Retorno:
# Retorno medio geométrico.
#
# Ejemplos:
# 1. Calcular el retorno medio geométrico con los retornos de c(-0.0934, 0.2345, 0.0892):
#    geometric.mean(r=c(-0.0934, 0.2345, 0.0892))
