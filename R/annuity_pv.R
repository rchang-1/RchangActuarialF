## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
##
#' @title Present Value (PV) of an Annuity Function
#' @description Calculates the Present Value (PV) of an annuity.
#' @param rate The discount rate.
#' @param nper The number of periods.
#' @param pmt The payment amount per period.
#' @return The Present Value.
#' @examples
#' # Example 1: Present Value of an annuity with a 5% discount rate over 10 periods and $100 payment per period
# annuity_pv(0.05, 10, 100)
#'
#' # Example 2: Present Value of an annuity with a 3% discount rate over 15 periods and $200 payment per period
# annuity_pv(0.03, 15, 200)
#' @export
# Function to calculate Present Value of an annuity
annuity_pv <- function(rate, nper, pmt) {
  pmt * (1 - (1 + rate)^-nper) / rate
}

# Explicación en español:
# Esta función `annuity_pv` calcula el Valor Presente (PV) de una anualidad, dado un tipo de descuento,
# el número de periodos y el monto de pago por periodo. La función utiliza la fórmula del valor presente de una anualidad.
#
# Parámetros:
# - `rate`: La tasa de descuento.
# - `nper`: El número de periodos.
# - `pmt`: El monto de pago por periodo.
#
# Salida:
# - El Valor Presente de la anualidad.
#
# Ejemplos Aplicados:
# 1. Valor Presente de una anualidad con una tasa de descuento del 5% durante 10 periodos y un pago de $100 por periodo.
#    annuity_pv(0.05, 10, 100)
#
# 2. Valor Presente de una anualidad con una tasa de descuento del 3% durante 15 periodos y un pago de $200 por periodo.
#    annuity_pv(0.03, 15, 200)
