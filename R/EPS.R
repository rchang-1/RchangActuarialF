## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Basic Earnings Per Share
#' @description Computes the basic earnings per share (EPS) based on net income, preferred dividends, and the weighted average number of common shares outstanding.
#'
#' @param ni Net income.
#' @param pd Preferred dividends.
#' @param w Weighted average number of common shares outstanding.
#'
#' @return Basic earnings per share (EPS).
#'
#' @examples
#' # Example usage:
# EPS(ni=10000, pd=1000, w=11000)
#'
#' @seealso diluted.EPS
#'
#' @export
EPS <- function(ni, pd, w) {
  eps <- (ni - pd) / w
  return(eps)
}
# Explicación en español:
# Esta función `EPS` calcula la ganancia básica por acción (EPS) basada en el ingreso neto, los dividendos preferentes y el promedio ponderado del número de acciones comunes en circulación.
#
# Parámetros:
# - `ni`: Ingreso neto.
# - `pd`: Dividendos preferentes.
# - `w`: Promedio ponderado del número de acciones comunes en circulación.
#
# Retorno:
# Ganancia básica por acción (EPS).
#
# Ejemplos:
# 1. Calcular la EPS con un ingreso neto de 10,000, dividendos preferentes de 1,000 y 11,000 acciones comunes en circulación:
#    EPS(ni=10000, pd=1000, w=11000)
