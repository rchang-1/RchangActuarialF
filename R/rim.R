## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'# File: R/rim.R
#' @title Residual Income Model (RIM) Function
#' @description Calculates the present value of future residual incomes using the Residual Income Model.
#'
#' Esta función calcula el valor presente de los ingresos residuales futuros utilizando el modelo de Residual Income.
#'
#' @param residual_incomes A numeric vector of expected future residual incomes.
#' Vector numérico de los ingresos residuales futuros esperados.
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
# residual_incomes <- c(5, 5.5, 6, 6.5, 7)
# discount_rate <- 0.1
# rim(residual_incomes, discount_rate)
#'
#' @export
# Función del modelo de Residual Income (RIM)
rim <- function(residual_incomes, discount_rate) {
  n <- length(residual_incomes)
  sum(residual_incomes / (1 + discount_rate)^(1:n))
}
