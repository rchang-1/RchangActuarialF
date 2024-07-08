## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
##
#' @title Present Value (PV) of an Annuity Function
#' @description Calculates the Present Value (PV) of an annuity.
#' @param rate The discount rate.
#' @param nper The number of periods.
#' @param pmt The payment amount per period.
#' @return The Present Value.
#' @examples
#' # Example usage:
# annuity_pv(0.05, 10, 100)
#' @export
# Function to calculate Present Value of an annuity
annuity_pv <- function(rate, nper, pmt) {
  pmt * (1 - (1 + rate)^-nper) / rate
}
