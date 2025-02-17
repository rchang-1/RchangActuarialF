## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Net Present Value (NPV) Function
#' @description Calculates the Net Present Value (NPV) given a discount rate and cash flows.
#'
#' This function calculates the Net Present Value (NPV) given a discount rate and a vector of cash flows.
#'
#' @param rate The discount rate.
#' @param cash_flows A numeric vector of cash flows.
#' @return The Net Present Value.
#'
#' @examples
#' # Example usage:
#' npv(0.1, c(-100, 50, 75, 200))
#' @export

npv <- function(rate, cash_flows) {
  sum(cash_flows / (1 + rate)^(0:(length(cash_flows) - 1)))
}

#' Función para calcular el Valor Presente Neto (VPN)
#'
#' Calcula el Valor Presente Neto (VPN) dado una tasa de descuento y flujos de efectivo.
#'
#' @param rate La tasa de descuento.
#' @param cash_flows Un vector numérico de flujos de efectivo.
#' @return El Valor Presente Neto (VPN).
#'
#' @examples
#' # Ejemplo de uso:
# npv(0.1, c(-100, 50, 75, 200))
