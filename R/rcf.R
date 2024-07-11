#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Residual Cash Flow (RCF) Model Function
#' @description Calculates the present value of future residual cash flows using the Residual Cash Flow Model.
#'
#' Esta función calcula el valor presente de los flujos de efectivo residual futuros utilizando el modelo de Residual Cash Flow.
#'
#' @param residual_cash_flows A numeric vector of expected future residual cash flows.
#' Vector numérico de los flujos de efectivo residual esperados futuros.
#'
#' @param discount_rate The discount rate (required rate of return).
#' Tasa de descuento (tasa requerida de retorno).
#'
#' @return The estimated fair value of the stock.
#' El valor estimado justo de la acción.
#'
#' @examples
#' # Example usage:
#' # Ejemplo de uso:
# residual_cash_flows <- c(5, 5.5, 6, 6.5, 7)
# discount_rate <- 0.1
# rcf(residual_cash_flows, discount_rate)
#'
#' @export
# Función del modelo de Residual Cash Flow (RCF)
rcf <- function(residual_cash_flows, discount_rate) {
  n <- length(residual_cash_flows)
  sum(residual_cash_flows / (1 + discount_rate)^(1:n))
}

