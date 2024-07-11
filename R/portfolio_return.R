## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Portfolio Return Function
#' @description Calculates the return of a portfolio given asset weights and returns.
#' @param weights A numeric vector of portfolio weights (proportions).
#' @param returns A numeric vector or matrix of asset returns.
#' @return The portfolio return.
#' @examples
#' # Example usage:
# weights <- c(0.5, 0.3, 0.2)
# asset_returns <- c(0.1, 0.05, 0.08)
# portfolio_return(weights, asset_returns)
#' @export
# Function to calculate portfolio return
portfolio_return <- function(weights, returns) {
  sum(weights * returns)
}

#' @title Función de Retorno del Portafolio
#' @description Calcula el retorno de un portafolio dados los pesos y los retornos de los activos.
#' @param pesos Un vector numérico con los pesos del portafolio (proporciones).
#' @param retornos Un vector numérico o una matriz de retornos de los activos.
#' @return El retorno del portafolio.

