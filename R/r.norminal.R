## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Convert Continuous Compounded Rate to Nominal Rate
#' @description Converts a given continuous compounded rate to a nominal rate.
#' @param rc Continuous compounded rate.
#' @param m Number of desired times compounded each year.
#' @return The nominal rate.
#' @examples
#' # Example usage:
# r.norminal(0.03, 1)
# r.norminal(0.03, 4)
#' @export

r.norminal <- function(rc, m) {
  (exp(rc / m) - 1) * m
}

# Explicación en español:
# Esta función `r.norminal` convierte una tasa compuesta continuamente en una tasa nominal.
#
# Parámetros:
# - `rc`: Tasa compuesta continuamente.
# - `m`: Número de veces deseado para componer al año.
#
# Salida:
# - La tasa nominal.
#
# Ejemplos Aplicados:
# 1. Convertir una tasa compuesta continuamente del 3% a una tasa nominal compuesta 1 vez al año.
#    r.norminal(0.03, 1)
# 2. Convertir una tasa compuesta continuamente del 3% a una tasa nominal compuesta 4 veces al año.
#    r.norminal(0.03, 4)
