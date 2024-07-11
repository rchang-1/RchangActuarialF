## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Financial Leverage
#' @description Computes the financial leverage, which is a solvency ratio that measures the firm's ability to satisfy its long-term obligations.
#'
#' @param te Total equity.
#' @param ta Total assets.
#'
#' @return Financial leverage ratio.
#'
#' @examples
#' # Example usage:
# financial.leverage(te=16000, ta=20000)
#'
#' @seealso total.d2e lt.d2e debt.ratio
#'
#' @export
financial.leverage <- function(te, ta) {
  leverage <- ta / te
  return(leverage)
}
# Explicación en español:
# Esta función `financial.leverage` calcula el apalancamiento financiero, que es un ratio de solvencia que mide la capacidad de la empresa para satisfacer sus obligaciones a largo plazo.
#
# Parámetros:
# - `te`: Capital total.
# - `ta`: Activos totales.
#
# Retorno:
# Ratio de apalancamiento financiero.
#
# Ejemplos:
# 1. Calcular el apalancamiento financiero con un capital total de 16,000 y activos totales de 20,000:
#    financial.leverage(te=16000, ta=20000)
