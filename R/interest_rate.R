## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
##
#' @title Interest Rate Function
#' @description Calculates the interest rate given present value (PV) and future value (FV).
#' @param pv The present value.
#' @param fv The future value.
#' @param period The period over which the interest rate is calculated.
#' @return The interest rate.
#' @examples
#' # Example usage:
# interest_rate(100, 200, 5)
#' @export
# Function to calculate interest rate given PV and FV
interest_rate <- function(pv, fv, period) {
  (fv / pv)^(1 / period) - 1
}
