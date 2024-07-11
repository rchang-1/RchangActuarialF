## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Sharpe Ratio
#' @description Computes the Sharpe Ratio.
#' @param rp Portfolio return.
#' @param rf Risk-free return.
#' @param sd Standard deviation of portfolio returns.
#' @return The Sharpe Ratio.
#' @examples
#' # Example usage:
# Sharpe.ratio(rp=0.038, rf=0.015, sd=0.07)
#' @export

Sharpe.ratio <- function(rp, rf, sd) {
  (rp - rf) / sd
}

# Explicación en español:
# Esta función `Sharpe.ratio` calcula el Ratio de Sharpe.
#
# Parámetros:
# - `rp`: Retorno del portafolio.
# - `rf`: Retorno libre de riesgo.
# - `sd`: Desviación estándar de los retornos del portafolio.
#
# Salida:
# - El Ratio de Sharpe.
#
# Ejemplos Aplicados:
# 1. Calcular el Ratio de Sharpe con un retorno del portafolio del 3.8%, un retorno libre de riesgo del 1.5%,
#    y una desviación estándar de los retornos del portafolio del 7%.
#    Sharpe.ratio(rp=0.038, rf=0.015, sd=0.07)
