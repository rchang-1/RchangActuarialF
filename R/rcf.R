#' #'#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'#'
#' @title Residual Cash Flow (RCF) Model Function
#' @description Calculates the present value of future residual cash flows using the Residual Cash Flow Model.
#' @param residual_cash_flows A numeric vector of expected future residual cash flows.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
#' residual_cash_flows <- c(5, 5.5, 6, 6.5, 7)
#' discount_rate <- 0.1
#' rcf(residual_cash_flows, discount_rate)
#' @export
# Residual Cash Flow (RCF) Model Function
rcf <- function(residual_cash_flows, discount_rate) {
  n <- length(residual_cash_flows)
  sum(residual_cash_flows / (1 + discount_rate)^(1:n))
}



