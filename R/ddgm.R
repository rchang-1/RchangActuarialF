## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Discounted Dividend Growth Model (DDGM) Function
#' @description Calculates the fair value of a stock using the Discounted Dividend Growth Model.
#' @param dividend The current dividend per share.
#' @param growth_rate The expected constant growth rate of dividends.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
#' dividend <- 2.5
#' growth_rate <- 0.04
#' discount_rate <- 0.1
#' ddgm(dividend, growth_rate, discount_rate)
#' @export

# Discounted Dividend Growth Model (DDGM) Function
ddgm <- function(dividend, growth_rate, discount_rate) {
  dividend * (1 + growth_rate) / (discount_rate - growth_rate)
}
