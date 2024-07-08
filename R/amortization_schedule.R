## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Amortization Schedule Function
#' @description Creates an amortization schedule given a principal amount, interest rate, and number of periods.
#' @param principal The principal amount (initial loan amount).
#' @param rate The interest rate per period.
#' @param nper The number of periods (loan term).
#' @return A data frame with columns: period, principal_paid, interest_paid, and balance.
#' @examples
#' # Example usage:
# amortization_schedule(100000, 0.05, 20)
#' @export
# Function to create an amortization schedule
amortization_schedule <- function(principal, rate, nper) {
  pmt <- principal * rate / (1 - (1 + rate)^-nper)
  schedule <- data.frame(
    period = 1:nper,
    principal_paid = numeric(nper),
    interest_paid = numeric(nper),
    balance = numeric(nper)
  )

  balance <- principal
  for (i in 1:nper) {
    interest_paid <- balance * rate
    principal_paid <- pmt - interest_paid
    balance <- balance - principal_paid
    schedule[i, 2:4] <- c(principal_paid, interest_paid, balance)
  }

  # Format numbers with commas for thousands and disable scientific notation
  options(scipen = 999)  # Disable scientific notation
  format(schedule, big.mark = ",", scientific = FALSE, digits=2)
}
