#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Calculate Net Present Value (NPV)
#'
#' This function calculates the net present value of a series of cash flows given an initial investment and a discount rate.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @param rate A numeric value representing the discount rate.
#'
#' @return A numeric value representing the net present value of the cash flows.
#'
#' @examples
# initial_investment <- -1000
# cash_flows <- c(100, 200, 300)
# rate <- 0.05
# calculate_npv(initial_investment, cash_flows, rate)
#'
#' @export
# Function to calculate Net Present Value (NPV)
calculate_npv <- function(initial_investment, cash_flows, rate) {
  pv <- function(cash_flows, rate) {
    sum(cash_flows / (1 + rate)^(1:length(cash_flows)))
  }
  initial_investment + pv(cash_flows, rate)
}

# Explicación en español:
# Esta función `calculate_npv` calcula el Valor Presente Neto (NPV) de una serie de flujos de caja dados una inversión inicial y una tasa de descuento.
#
# Parámetros:
# - `initial_investment`: Valor numérico que representa la inversión inicial.
# - `cash_flows`: Vector numérico de flujos de caja que representan los ingresos y egresos a lo largo del tiempo.
# - `rate`: Tasa numérica que representa la tasa de descuento.
#
# Salida:
# - Valor numérico que representa el Valor Presente Neto (NPV) de los flujos de caja.
#
# Ejemplos Aplicados:
# 1. Calcula el NPV para una inversión inicial de -1000 unidades monetarias con flujos de caja de 100, 200 y 300 unidades monetarias en periodos sucesivos, utilizando una tasa de descuento del 5%.
#    calculate_npv(initial_investment = -1000, cash_flows = c(100, 200, 300), rate = 0.05)
