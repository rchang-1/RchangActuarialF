## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Weighted Mean as a Portfolio Return
#' @description Calculate the weighted mean as a portfolio return.
#' @param r Returns of the individual assets in the portfolio.
#' @param w Corresponding weights associated with each of the individual assets.
#' @return The weighted mean portfolio return.
#' @examples
#' # Example usage:
# wpr(r = c(0.12, 0.07, 0.03), w = c(0.5, 0.4, 0.1))
#' @export

wpr <- function(r, w) {
  sum(r * w)
}

# Explicación en español:
# Esta función `wpr` calcula la media ponderada como el retorno de una cartera, dado un vector de retornos de los activos individuales
# en la cartera y un vector de pesos correspondientes asociados a cada uno de los activos individuales.
#
# Parámetros:
# - `r`: Retornos de los activos individuales en la cartera.
# - `w`: Pesos correspondientes asociados a cada uno de los activos individuales.
#
# Ejemplos Aplicados:
# 1. Calcular la media ponderada del retorno de una cartera con retornos de 0.12, 0.07 y 0.03, y pesos de 0.5, 0.4 y 0.1 respectivamente.
#    wpr(r = c(0.12, 0.07, 0.03), w = c(0.5, 0.4, 0.1))
