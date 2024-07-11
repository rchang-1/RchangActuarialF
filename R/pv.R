## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Present Value (PV) Function
#' @description Calculates the Present Value (PV) of a single cash flow.
#' @param rate The discount rate.
#' @param cash_flow The cash flow amount.
#' @param period The period in which the cash flow occurs.
#' @return The Present Value.
#' @examples
#' # Example usage:
# pv(0.1, 100, 1)
#' @export
# Function to calculate Present Value (PV)
pv <- function(rate, cash_flow, period) {
  cash_flow / (1 + rate)^period
}

#' @description Calcula el Valor Presente (VP) de un único flujo de efectivo.
#' @param tasa La tasa de descuento.
#' @param flujo_efectivo El monto del flujo de efectivo.
#' @param periodo El período en el cual ocurre el flujo de efectivo.
#' @return El Valor Presente.
#' @examples
#' # Ejemplo de uso:
#' vp(0.1, 100, 1)
