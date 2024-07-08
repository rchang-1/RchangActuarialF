## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Present Value (PV) Function
#' @description Calculates the Present Value (PV) of a single cash flow.
#' @param rate The discount rate.
#' @param cash_flow The cash flow amount.
#' @param period The period in which the cash flow occurs.
#' @return The Present Value.
#' @examples
#' # Example usage:
# pv(0.1, 100, 1)
#' @export
# Function to calculate Present Value (PV)
pv <- function(rate, cash_flow, period) {
  cash_flow / (1 + rate)^period
}
