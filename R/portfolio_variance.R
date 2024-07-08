## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#' @title Portfolio Variance Function
#' @description Calculates the variance of a portfolio given asset weights and a covariance matrix.
#' @param weights A numeric vector of portfolio weights (proportions).
#' @param covariance_matrix A covariance matrix of asset returns.
#' @return The portfolio variance.
#' @examples
#' # Example usage:
# weights <- c(0.5, 0.3, 0.2)
# cov_matrix <- matrix(c(0.1, 0.03, 0.02, 0.03, 0.12, 0.05, 0.02, 0.05, 0.15), nrow = 3, ncol = 3)
# portfolio_variance(weights, cov_matrix)
#' @export
# Function to calculate portfolio variance
portfolio_variance <- function(weights, covariance_matrix) {
  t(weights) %*% covariance_matrix %*% weights
}
