## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
##' @title Bond Price Function
#' @description Calculates the price of a bond given its face value, coupon rate, market rate, and number of periods.
#' @param face_value The face value (par value) of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param market_rate The current market interest rate.
#' @param nper The number of periods (years) until bond maturity.
#' @return The price of the bond.
#' @examples
#' # Example usage:
# bond_price(1000, 0.05, 0.03, 10)
# Bond Price Function
#' @export
bond_price <- function(face_value, coupon_rate, market_rate, nper) {
  # Present Value Function
  pv <- function(cash_flow, rate, nper) {
    cash_flow / (1 + rate)^nper
  }

  coupon <- face_value * coupon_rate

  # Calculate present value of the coupon payments and face value
  pv_coupons <- sum(sapply(1:nper, function(t) pv(coupon, market_rate, t)))
  pv_face_value <- pv(face_value, market_rate, nper)

  # Sum of present values to get bond price
  pv_coupons + pv_face_value
}
