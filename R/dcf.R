## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Discounted Cash Flow (DCF) Function
#' @description Calculates the present value of future cash flows using the Discounted Cash Flow method.
#' @param cash_flows A numeric vector of expected future cash flows.
#' @param discount_rate The discount rate (required rate of return).
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# cash_flows <- c(10, 12, 15, 18, 20)
# discount_rate <- 0.08
# dcf(cash_flows, discount_rate)
#' @export
#' Discounted Cash Flow (DCF) Function
dcf <- function(cash_flows, discount_rate) {
  n <- length(cash_flows)
  sum(cash_flows / (1 + discount_rate)^(1:n))
}
