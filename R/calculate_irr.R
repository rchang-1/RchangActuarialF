#' #' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Calculate Internal Rate of Return (IRR)
#'
#' This function calculates the internal rate of return of a series of cash flows given an initial investment.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @return A numeric value representing the internal rate of return.
#' @examples
#' initial_investment <- -1000
#' cash_flows <- c(100, 200, 300)
#' calculate_irr(initial_investment, cash_flows)
#' @export
calculate_irr <- function(initial_investment, cash_flows) {
  irr_func <- function(rate) {
    calculate_npv(initial_investment, cash_flows, rate)
  }
  # Trying a broader range for the root search
  tryCatch(
    uniroot(irr_func, c(-0.99, 10))$root,
    error = function(e) stop("Could not find a root in the interval [-0.99, 10]")
  )
}


