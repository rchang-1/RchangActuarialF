#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Indifference Rate Function (Lempiras)
#'
#' @description Calculates the indifference rate in Lempiras given a dollar interest rate, annual devaluation rate of Lempira, and optionally a constant.
#' @param tasa_en_dolares The dollar interest rate.
#' @param devaluacion_anual The annual devaluation rate of Lempira.
#' @return The indifference rate in Lempiras.
#' @examples
#' # Example usage:
#' tasa_en_dolares <- 0.06  # 6% dollar interest rate
#' devaluacion_anual <- 0.05  # 5% annual Lempira devaluation rate
#' tasa_indiferencia_lempiras(tasa_en_dolares, devaluacion_anual)
#' @export
#'
#' @title Función de Tasa de Indiferencia (Lempiras)
#'
#' @description Calcula la tasa de indiferencia en Lempiras dada una tasa de interés en dólares, la tasa de devaluación anual del Lempira, y opcionalmente una constante.
#' @param tasa_en_dolares La tasa de interés en dólares.
#' @param devaluacion_anual La tasa de devaluación anual del Lempira.
#' @return La tasa de indiferencia en Lempiras.
#' @examples
#' # Ejemplo de uso:
# tasa_en_dolares <- 0.06  # Tasa de interés en dólares del 6%
# devaluacion_anual <- 0.05  # Tasa de devaluación anual del Lempira del 5%
# tasa_indiferencia_lempiras(tasa_en_dolares, devaluacion_anual)
#' @export
#'
# Función para calcular la tasa de indiferencia en Lempiras
tasa_indiferencia_lempiras <- function(tasa_en_dolares, devaluacion_anual) {
  # Convertir tasa en dólares a efectiva anual
  tasa_dolar_anual <- (1 + tasa_en_dolares)

  # Convertir devaluación anual a factor multiplicativo
  factor_devaluacion <- 1 + devaluacion_anual

  # Calcular tasa de indiferencia en lempiras
  ind_rate_lempiras <- (factor_devaluacion * tasa_dolar_anual) - 1

  ind_rate_lempiras
}
