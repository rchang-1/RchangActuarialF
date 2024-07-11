## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Internal Rate of Return (IRR) Function
#' @description Calculates the Internal Rate of Return (IRR) given a series of cash flows.
#'
#' This function calculates the Internal Rate of Return (IRR) given a series of cash flows and an initial guess.
#'
#' @param cash_flows A numeric vector of cash flows.
#' @param guess An initial guess for the IRR (default is 0.1).
#' @return The Internal Rate of Return.
#'
#' @examples
#' # Example usage:
#' irr(c(-100, 50, 75, 200))
#' @export

#' Función para calcular la Tasa Interna de Retorno (TIR)
#'
#' Calcula la Tasa Interna de Retorno (TIR) dado una serie de flujos de efectivo.
#'
#' @param cash_flows Un vector numérico de flujos de efectivo.
#' @param guess Una estimación inicial para la TIR (por defecto es 0.1).
#' @return La Tasa Interna de Retorno (TIR).
#'
#' @examples
#' # Ejemplo de uso:
# irr(c(-100, 50, 75, 200))
#' @export
irr <- function(cash_flows, guess = 0.1) {
  uniroot(function(rate) npv(rate, cash_flows), c(-1, 1), tol = .Machine$double.eps)$root
}
