## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
##
# Function to calculate Future Value of an annuity
#' @title Future Value (FV) of an Annuity Function
#' @description Calculates the Future Value (FV) of an annuity.
#' @param rate The discount rate.
#' @param nper The number of periods.
#' @param pmt The payment amount per period.
#' @return The Future Value.
#' @examples
#' # Example usage:
# annuity_fv(0.05, 10, 100)
#' @export
annuity_fv <- function(rate, nper, pmt) {
  pmt * ((1 + rate)^nper - 1) / rate
}
