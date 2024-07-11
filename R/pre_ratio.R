## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Price-to-Earnings (P/E) Ratio Model Function
#'
#' @description Estimates the fair value of a stock using the Price-to-Earnings (P/E) Ratio.
#'
#' Esta función estima el valor justo de una acción utilizando el Price-to-Earnings (P/E) Ratio.
#'
#' @param earnings_per_share The current earnings per share.
#' Ganancias por acción actuales.
#'
#' @param pe_ratio The desired Price-to-Earnings (P/E) Ratio.
#' Ratio precio-ganancias (P/E) deseado.
#'
#' @return The estimated fair value of the stock.
#' El valor estimado justo de la acción.
#'
#' @examples
#' # Example usage:
#' # Ejemplo de uso:
#' earnings_per_share <- 3.5
#' pe_ratio <- 15
#' pre_ratio(earnings_per_share, pe_ratio)
#'
#' @export
# Función para el modelo del Price-to-Earnings (P/E) Ratio
## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Price-to-Earnings (P/E) Ratio Model Function
#'
#' @description Estimates the fair value of a stock using the Price-to-Earnings (P/E) Ratio.
#'
#' Esta función estima el valor justo de una acción utilizando el Price-to-Earnings (P/E) Ratio.
#'
#' @param earnings_per_share The current earnings per share.
#' Ganancias por acción actuales.
#'
#' @param pe_ratio The desired Price-to-Earnings (P/E) Ratio.
#' Ratio precio-ganancias (P/E) deseado.
#'
#' @return The estimated fair value of the stock.
#' El valor estimado justo de la acción.
#'
#' @examples
#' # Example usage:
#' # Ejemplo de uso:
# earnings_per_share <- 3.5
# pe_ratio <- 15
# pre_ratio(earnings_per_share, pe_ratio)
#'
#' @export
# Función para el modelo del Price-to-Earnings (P/E) Ratio
pre_ratio <- function(earnings_per_share, pe_ratio) {
  earnings_per_share * pe_ratio
}

