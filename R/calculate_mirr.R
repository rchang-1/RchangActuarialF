#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Calculate Modified Internal Rate of Return (MIRR)
#'
#' This function calculates the modified internal rate of return (MIRR) of a series of cash flows given an initial investment, a finance rate, and a reinvestment rate.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @param finance_rate A numeric value representing the finance rate.
#' @param reinvestment_rate A numeric value representing the reinvestment rate.
#'
#' @return A numeric value representing the modified internal rate of return.
#'
#' @examples
# initial_investment <- -1000
# cash_flows <- c(100, 200, 300, 400, 500)
# finance_rate <- 0.05
# reinvestment_rate <- 0.08
# calculate_mirr(initial_investment, cash_flows, finance_rate, reinvestment_rate)
#'
#' @export
# Function to calculate Modified Internal Rate of Return (MIRR)
calculate_mirr <- function(initial_investment, cash_flows, finance_rate, reinvestment_rate) {
  # Calculate future value of positive cash flows (benefits)
  positive_cash_flows <- cash_flows[cash_flows > 0]
  positive_periods <- seq_along(positive_cash_flows)
  future_value <- sum(positive_cash_flows * (1 + reinvestment_rate)^(length(cash_flows) - positive_periods))

  # Calculate present value of negative cash flows (costs)
  negative_cash_flows <- c(initial_investment, cash_flows[cash_flows < 0])
  negative_periods <- seq_along(negative_cash_flows) - 1
  present_value <- sum(negative_cash_flows / (1 + finance_rate)^negative_periods)

  # Calculate MIRR
  mirr <- (future_value / abs(present_value))^(1 / length(cash_flows)) - 1

  return(mirr)
}

# Explicación en español:
# Esta función `calculate_mirr` calcula la Tasa Interna de Retorno Modificada (MIRR) de una serie de flujos de caja dados una inversión inicial, una tasa de financiamiento y una tasa de reinversión.
#
# Parámetros:
# - `initial_investment`: Valor numérico que representa la inversión inicial.
# - `cash_flows`: Vector numérico de flujos de caja que representan los ingresos y egresos a lo largo del tiempo.
# - `finance_rate`: Tasa numérica que representa la tasa de financiamiento.
# - `reinvestment_rate`: Tasa numérica que representa la tasa de reinversión.
#
# Salida:
# - Valor numérico que representa la Tasa Interna de Retorno Modificada (MIRR).
#
# Ejemplos Aplicados:
# 1. Calcula la MIRR para una inversión inicial de -1000 unidades monetarias con flujos de caja de 100, 200, 300, 400 y 500 unidades monetarias en periodos sucesivos, utilizando una tasa de financiamiento del 5% y una tasa de reinversión del 8%.
#    calculate_mirr(initial_investment = -1000, cash_flows = c(100, 200, 300, 400, 500), finance_rate = 0.05, reinvestment_rate = 0.08)
