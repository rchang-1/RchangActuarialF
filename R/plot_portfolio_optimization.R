## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' Plot Portfolio Optimization
#'
#' This function plots the optimal portfolio weights given asset returns and covariance matrix.
#'
#' @param returns A matrix or data frame of asset returns.
#' @param covariance_matrix A covariance matrix of asset returns.
#' @return A Plotly object representing the optimal portfolio weights.
#' @examples
#' # Example usage:
# returns <- matrix(c(0.1, 0.2, 0.15, 0.05, 0.1, 0.12), ncol = 2)
# covariance_matrix <- matrix(c(0.005, -0.010, -0.010, 0.040), ncol = 2)
# plot_portfolio_optimization(returns, covariance_matrix)
#' @import plotly
#' @export
plot_portfolio_optimization <- function(returns, covariance_matrix) {
  library(plotly)

  # Optimize portfolio
  result <- portfolio_optimization(returns, covariance_matrix)

  # Create plotly plot
  plot_ly(x = colnames(returns), y = result, type = 'bar', marker = list(color = '#1f77b4')) %>%
    layout(title = 'Optimal Portfolio Weights',
           xaxis = list(title = 'Assets'),
           yaxis = list(title = 'Weight'))
}
