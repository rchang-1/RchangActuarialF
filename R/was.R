## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Calculate Weighted Average Shares
#' @description Calculate weighted average shares – weighted average number of common shares.
#' @param ns n x 1 vector of number of shares.
#' @param nm n x 1 vector of number of months related to ns.
#' @return The weighted average number of common shares.
#' @examples
#' # Example usage:
#' s <- c(10000, 2000)
#' m <- c(12, 6)
#' was(ns = s, nm = m)
# s <- c(11000, 4400, -3000)
# m <- c(12, 9, 4)
# was(ns = s, nm = m)
#' @export

was <- function(ns, nm) {
  sum(ns * nm) / sum(nm)
}

# Explicación en español:
# Esta función `was` calcula el promedio ponderado de acciones comunes, dado un vector de número de acciones
# y un vector de número de meses relacionados con cada número de acciones.
#
# Parámetros:
# - `ns`: Vector de n x 1 de número de acciones.
# - `nm`: Vector de n x 1 de número de meses relacionados con `ns`.
#
# Ejemplos Aplicados:
# 1. Calcular el promedio ponderado de acciones comunes con 10000 acciones durante 12 meses y 2000 acciones durante 6 meses.
#    s <- c(10000, 2000)
#    m <- c(12, 6)
#    was(ns = s, nm = m)
# 2. Calcular el promedio ponderado de acciones comunes con 11000 acciones durante 12 meses, 4400 acciones durante 9 meses
#    y -3000 acciones durante 4 meses.
#    s <- c(11000, 4400, -3000)
#    m <- c(12, 9, 4)
#    was(ns = s, nm = m)
