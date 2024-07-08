## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'# File: R/rim.R
#' @title Residual Income Model (RIM) Function
#' @description Calculates the present value of future residual incomes using the Residual Income Model.
#' @param residual_incomes A numeric vector of expected future residual incomes.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
#' residual_incomes <- c(5, 5.5, 6, 6.5, 7)
#' discount_rate <- 0.1
#' rim(residual_incomes, discount_rate)
#' @export
# Residual Income Model (RIM) Function
rim <- function(residual_incomes, discount_rate) {
  n <- length(residual_incomes)
  sum(residual_incomes / (1 + discount_rate)^(1:n))
}
