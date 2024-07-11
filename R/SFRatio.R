## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Computing Roy’s Safety-First Ratio
#' @description Computes Roy’s safety-first ratio.
#' @param rp Portfolio return.
#' @param rl Threshold level return.
#' @param sd Standard deviation of portfolio returns.
#' @return Roy’s safety-first ratio.
#' @examples
#' # Example usage:
# SFRatio(rp=0.09, rl=0.03, sd=0.12)
#' @export

SFRatio <- function(rp, rl, sd) {
  (rp - rl) / sd
}

# Explicación en español:
# Esta función `SFRatio` calcula el ratio de seguridad de Roy.
#
# Parámetros:
# - `rp`: Retorno del portafolio.
# - `rl`: Retorno del nivel de umbral.
# - `sd`: Desviación estándar de los retornos del portafolio.
#
# Salida:
# - El ratio de seguridad de Roy.
#
# Ejemplos Aplicados:
# 1. Calcular el ratio de seguridad de Roy con un retorno del portafolio del 9%, un retorno del nivel de umbral del 3%,
#    y una desviación estándar de los retornos del portafolio del 12%.
#    SFRatio(rp=0.09, rl=0.03, sd=0.12)
