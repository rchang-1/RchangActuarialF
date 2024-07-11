## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Convert Nominal Rate to Continuous Compounded Rate
#' @description Converts a given nominal rate to a continuously compounded rate.
#' @param r Nominal rate.
#' @param m Number of times compounded each year.
#' @return The continuously compounded rate.
#' @examples
#' # Example usage:
# r.continuous(0.03, 4)
#' @export

r.continuous <- function(r, m) {
  log(1 + r / m) * m
}

# Explicación en español:
# Esta función `r.continuous` convierte una tasa nominal dada en una tasa compuesta continuamente.
#
# Parámetros:
# - `r`: Tasa nominal.
# - `m`: Número de veces que se compone al año.
#
# Salida:
# - La tasa compuesta continuamente.
#
# Ejemplos Aplicados:
# 1. Convertir una tasa nominal del 3% compuesta 4 veces al año a una tasa compuesta continuamente.
#    r.continuous(0.03, 4)
