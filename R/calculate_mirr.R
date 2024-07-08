#'#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Calculate Modified Internal Rate of Return (MIRR)
#'
#' This function calculates the modified internal rate of return (MIRR) of a series of cash flows given an initial investment, a finance rate, and a reinvestment rate.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @param finance_rate A numeric value representing the finance rate.
#' @param reinvestment_rate A numeric value representing the reinvestment rate.
#' @return A numeric value representing the modified internal rate of return.
#' @examples
#' initial_investment <- -1000
#' cash_flows <- c(100, 200, 300, 400, 500)
#' finance_rate <- 0.05
#' reinvestment_rate <- 0.08
#' calculate_mirr(initial_investment, cash_flows, finance_rate, reinvestment_rate)
#' @export
calculate_mirr <- function(initial_investment, cash_flows, finance_rate, reinvestment_rate) {
  # Calcular el valor futuro de los flujos de efectivo positivos (beneficios)
  positive_cash_flows <- cash_flows[cash_flows > 0]
  positive_periods <- seq_along(positive_cash_flows)
  future_value <- sum(positive_cash_flows * (1 + reinvestment_rate)^(length(cash_flows) - positive_periods))

  # Calcular el valor presente de los flujos de efectivo negativos (costos)
  negative_cash_flows <- c(initial_investment, cash_flows[cash_flows < 0])
  negative_periods <- seq_along(negative_cash_flows) - 1
  present_value <- sum(negative_cash_flows / (1 + finance_rate)^negative_periods)

  # Calcular MIRR
  mirr <- (future_value / abs(present_value))^(1 / length(cash_flows)) - 1

  return(mirr)
}

