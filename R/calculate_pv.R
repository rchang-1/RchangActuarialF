#' Dr. Roberto Chang López / rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Calculate Present Value (PV)
#'
#' This function calculates the present value of a series of cash flows given a discount rate.
#'
#' @param cash_flows A numeric vector of cash flows.
#' @param rate A numeric value representing the discount rate.
#'
#' @return A numeric value representing the present value of the cash flows.
#'
#' @examples
# cash_flows <- c(100, 200, 300)
# rate <- 0.05
# calculate_pv(cash_flows, rate)
#'
#' @export
# Function to calculate Present Value (PV)
calculate_pv <- function(cash_flows, rate) {
  sum(cash_flows / (1 + rate)^(seq_along(cash_flows) - 1))
}

# Explicación en español:
# Esta función `calculate_pv` calcula el Valor Presente (PV) de una serie de flujos de caja dado una tasa de descuento.
#
# Parámetros:
# - `cash_flows`: Vector numérico de flujos de caja que representan los ingresos y egresos a lo largo del tiempo.
# - `rate`: Tasa numérica que representa la tasa de descuento.
#
# Salida:
# - Valor numérico que representa el Valor Presente (PV) de los flujos de caja.
#
# Ejemplos Aplicados:
# 1. Calcula el PV para flujos de caja de 100, 200 y 300 unidades monetarias en periodos sucesivos, utilizando una tasa de descuento del 5%.
#    calculate_pv(cash_flows = c(100, 200, 300), rate = 0.05)

