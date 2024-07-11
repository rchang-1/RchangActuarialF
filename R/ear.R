## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Effective Annual Rate (EAR)
#' @description Converts a stated annual rate to the effective annual rate.
#' @param r Stated annual rate.
#' @param m Number of compounding periods per year.
#' @return Effective annual rate.
#' @examples
#' # Example usage:
#' ear(r = 0.12, m = 12)
# ear(0.04, 365)
#' @export

ear <- function(r, m) {
  (1 + r / m)^m - 1
}

# Explicación en español:
# Esta función `ear` convierte una tasa anual declarada a la tasa anual efectiva (EAR).
#
# Parámetros:
# - `r`: Tasa anual declarada.
# - `m`: Número de períodos de capitalización por año.
#
# Ejemplos Aplicados:
# 1. Convertir una tasa anual declarada del 12% a la tasa anual efectiva (EAR) con 12 períodos de capitalización por año.
#    ear(r = 0.12, m = 12)
# 2. Convertir una tasa anual del 4% a la tasa anual efectiva (EAR) con 365 períodos de capitalización por año.
#    ear(0.04, 365)
