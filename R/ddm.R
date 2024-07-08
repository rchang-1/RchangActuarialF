## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'#'
#'
#' @title Dividend Discount Model (DDM) Function
#' @description Calculates the present value of future dividends using the Dividend Discount Model.
#' @param dividends A numeric vector of expected future dividends.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
#' dividends <- c(2.5, 2.7, 3.0, 3.2, 3.5)
#' discount_rate <- 0.1
#' ddm(dividends, discount_rate)
#' @export

# Dividend Discount Model (DDM) Function
ddm <- function(dividends, discount_rate) {
  n <- length(dividends)
  sum(dividends / (1 + discount_rate)^(1:n))
}

