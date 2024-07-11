## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Depreciation Expense Recognition – Straight-line Depreciation (SL)
#' @description Allocates an equal amount of depreciation each year over the asset’s useful life.
#' @param cost Cost of long-lived assets.
#' @param rv Residual value of the long-lived assets at the end of its useful life.
#' @param t Length of the useful life.
#' @return The annual depreciation expense.
#' @examples
#' # Example usage:
# slde(cost=1200, rv=200, t=5)
#' @export

slde <- function(cost, rv, t) {
  (cost - rv) / t
}

# Explicación en español:
# Esta función `slde` asigna una cantidad igual de depreciación cada año durante la vida útil del activo.
#
# Parámetros:
# - `cost`: Costo de los activos de larga duración.
# - `rv`: Valor residual de los activos de larga duración al final de su vida útil.
# - `t`: Duración de la vida útil.
#
# Salida:
# - El gasto anual de depreciación.
#
# Ejemplos Aplicados:
# 1. Calcular el gasto anual de depreciación para un activo con un costo de $1200, un valor residual de $200,
#    y una vida útil de 5 años.
#    slde(cost=1200, rv=200, t=5)
