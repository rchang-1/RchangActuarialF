#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Calculate Net Present Value (NPV)
#'
#' This function calculates the net present value of a series of cash flows given an initial investment and a discount rate.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @param rate A numeric value representing the discount rate.
#' @return A numeric value representing the net present value of the cash flows.
#' @examples
#' initial_investment <- -1000
#' cash_flows <- c(100, 200, 300)
#' rate <- 0.05
#' calculate_npv(initial_investment, cash_flows, rate)
#' @export
calculate_npv <- function(initial_investment, cash_flows, rate) {
  initial_investment + calculate_pv(cash_flows, rate)
}

