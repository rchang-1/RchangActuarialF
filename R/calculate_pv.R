#' Dr. Roberto Chang López  / rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Calculate Present Value (PV)
#'
#' This function calculates the present value of a series of cash flows given a discount rate.
#'
#' @param cash_flows A numeric vector of cash flows.
#' @param rate A numeric value representing the discount rate.
#' @return A numeric value representing the present value of the cash flows.
#' @examples
#' cash_flows <- c(100, 200, 300)
#' rate <- 0.05
#' calculate_pv(cash_flows, rate)
#' @export
calculate_pv <- function(cash_flows, rate) {
  sum(cash_flows / (1 + rate)^(seq_along(cash_flows) - 1))
}

