## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica

#' @title Future Value of a Single Amount (FV Single) Function
#' @description Calculates the Future Value (FV) of a single amount given a discount rate and number of periods.
#' @param amount The initial amount.
#' @param rate The discount rate.
#' @param periods The number of periods.
#' @return The Future Value of the single amount.
#' @examples
#' # Example usage:
#' fv_single(100, 0.1, 3)
#' @export
fv_single <- function(amount, rate, periods) {
  amount * (1 + rate)^periods
}


