## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Continuous Effective Annual Rate (EAR)
#' @description Converts a stated annual rate to the effective annual rate with continuous compounding.
#' @param r Stated annual rate.
#' @return Effective annual rate with continuous compounding.
#' @examples
#' # Example usage:
#' ear.continuous(r = 0.1)
# ear.continuous(0.03)
#' @export

ear.continuous <- function(r) {
  exp(r) - 1
}

# Explicación en español:
# Esta función `ear.continuous` convierte una tasa anual declarada a la tasa anual efectiva (EAR) con capitalización continua.
#
# Parámetros:
# - `r`: Tasa anual declarada.
#
# Ejemplos Aplicados:
# 1. Convertir una tasa anual declarada del 10% a la tasa anual efectiva (EAR) con capitalización continua.
#    ear.continuous(r = 0.1)
# 2. Convertir una tasa anual del 3% a la tasa anual efectiva (EAR) con capitalización continua.
#    ear.continuous(0.03)
