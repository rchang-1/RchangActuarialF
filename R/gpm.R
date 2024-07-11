## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu

#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Gross Profit Margin
#' @description Computes the gross profit margin, evaluating a company’s financial performance.
#'
#' @param gp Gross profit, equal to revenue minus cost of goods sold (cogs).
#' @param rv Revenue (sales).
#'
#' @return Gross profit margin.
#'
#' @examples
#' # Example usage:
# gpm(gp = 1000, rv = 20000)
#'
#' @export
gpm <- function(gp, rv) {
  margin <- (gp / rv) * 100
  return(margin)
}
# Explicación en español:
# Esta función `gpm` calcula el margen de utilidad bruta, evaluando el rendimiento financiero de una empresa.
#
# Parámetros:
# - `gp`: Utilidad bruta, igual a ingresos menos costo de ventas (cogs).
# - `rv`: Ingresos (ventas).
#
# Retorno:
# Margen de utilidad bruta.
#
# Ejemplos:
# 1. Calcular el margen de utilidad bruta con gp = 1000 y rv = 20000:
#    gpm(gp = 1000, rv = 20000)
