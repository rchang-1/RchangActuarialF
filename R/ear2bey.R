## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Bond-Equivalent Yield (BEY)
#' @description Converts the effective annual rate (EAR) to the bond-equivalent yield (BEY), which is 2 times the semiannual discount rate.
#' @param ear Effective annual rate (EAR).
#' @return Bond-equivalent yield (BEY).
#' @examples
#' # Example usage:
# ear2bey(ear = 0.06)
#' @export

ear2bey <- function(ear) {
  ear / 2
}

# Explicación en español:
# Esta función `ear2bey` convierte la tasa anual efectiva (EAR) a la tasa de rendimiento equivalente de bonos (BEY), que es el doble de la tasa de descuento semestral.
#
# Parámetros:
# - `ear`: Tasa anual efectiva (EAR).
#
# Ejemplos Aplicados:
# 1. Convertir una tasa anual efectiva (EAR) del 6% a la tasa de rendimiento equivalente de bonos (BEY).
#    ear2bey(ear = 0.06)
