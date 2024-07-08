## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Gordon Growth Model (GGM) Function
#' @description Calculates the fair value of a stock using the Gordon Growth Model.
#' @param dividend The current dividend per share.
#' @param growth_rate The expected constant growth rate of dividends.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# dividend <- 2
# growth_rate <- 0.05
# discount_rate <- 0.1
# ggm(dividend, growth_rate, discount_rate)
#' @export
ggm <- function(dividend, growth_rate, discount_rate) {
  dividend * (1 + growth_rate) / (discount_rate - growth_rate)
}
