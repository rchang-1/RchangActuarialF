## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica

#' @title Portfolio Variance Function
#'
#' @description Calculates the variance of a portfolio given asset weights and a covariance matrix.
#'
#' Esta función calcula la varianza de un portafolio dado los pesos de los activos y una matriz de covarianza.
#'
#' @param weights A numeric vector of portfolio weights (proportions).
#' Vector numérico de los pesos del portafolio (proporciones).
#'
#' @param covariance_matrix A covariance matrix of asset returns.
#' Matriz de covarianza de los rendimientos de los activos.
#'
#' @return The portfolio variance.
#' La varianza del portafolio.
#'
#' @examples
#' # Example usage:
#' # Ejemplo de uso:
# weights <- c(0.5, 0.3, 0.2)
# cov_matrix <- matrix(c(0.1, 0.03, 0.02, 0.03, 0.12, 0.05, 0.02, 0.05, 0.15), nrow = 3, ncol = 3)
# portfolio_variance(weights, cov_matrix)
#'
#' @export
portfolio_variance <- function(weights, covariance_matrix) {
  t(weights) %*% covariance_matrix %*% weights
}

