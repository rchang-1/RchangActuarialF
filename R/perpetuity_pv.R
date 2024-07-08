## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Present Value (PV) of a Perpetuity Function
#' @description Calculates the Present Value (PV) of a perpetuity.
#' @param rate The discount rate.
#' @param pmt The payment amount per period.
#' @return The Present Value.
#' @examples
#' # Example usage:
#' perpetuity_pv(0.05, 100)
#' @export
# Function to calculate Present Value of a perpetuity
perpetuity_pv <- function(rate, pmt) {
  pmt / rate
}
