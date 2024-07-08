## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Internal Rate of Return (IRR) Function
#' @description Calculates the Internal Rate of Return (IRR) given a series of cash flows.
#' @param cash_flows A numeric vector of cash flows.
#' @param guess An initial guess for the IRR.
#' @return The Internal Rate of Return.
#' @examples
#' # Example usage:
# irr(c(-100, 50, 75, 200))
#' @export
# Function to calculate Internal Rate of Return (IRR)
irr <- function(cash_flows, guess = 0.1) {
  uniroot(function(rate) npv(rate, cash_flows), c(-1, 1), tol = .Machine$double.eps)$root
}
