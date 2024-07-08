## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Modified Internal Rate of Return (MIRR) Function
#' @description Calculates the Modified Internal Rate of Return (MIRR) given cash flows, finance rate, and reinvestment rate.
#' @param cash_flows A numeric vector of cash flows.
#' @param finance_rate The finance rate for discounting cash outflows.
#' @param reinvest_rate The reinvestment rate for compounding cash inflows.
#' @return The Modified Internal Rate of Return.
#' @examples
#' # Example usage:
# mirr(c(-100, 50, 75, 200), 0.05, 0.08)
#' @export
# Function to calculate Modified Internal Rate of Return (MIRR)
mirr <- function(cash_flows, finance_rate, reinvest_rate) {
  n <- length(cash_flows)
  pv_cost <- sum(cash_flows[cash_flows < 0] / (1 + finance_rate)^(0:(n - 1))[cash_flows < 0])
  fv_benefit <- sum(cash_flows[cash_flows > 0] * (1 + reinvest_rate)^(n - 1 - (0:(n - 1))[cash_flows > 0]))
  (fv_benefit / -pv_cost)^(1 / (n - 1)) - 1
}
