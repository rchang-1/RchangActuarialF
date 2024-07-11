## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' Plot Portfolio Optimization
#'
#' This function plots the optimal portfolio weights given asset returns and covariance matrix.
#'
#'First you need to calculate portfolio_optimization
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
  # Check if plotly is installed, install if not
  # Verificar si plotly está instalado, instalar si no está
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Optimize portfolio
  result <- portfolio_optimization(returns, covariance_matrix)

  # Create plotly plot
  plot_ly(x = colnames(returns), y = result, type = 'bar', marker = list(color = '#1f77b4')) %>%
    layout(title = 'Optimal Portfolio Weights',
           xaxis = list(title = 'Assets'),
           yaxis = list(title = 'Weight'))
}

##Para utilizar esta función debes calcular primero portfolio_optimization

#' Optimización de Portafolio
#'
#' Esta función grafica los pesos óptimos del portafolio dados los rendimientos de activos y la matriz de covarianza.
#'
#' Primero es necesario calcular la optimización del portafolio.
#'
#' @param returns Una matriz o marco de datos de los rendimientos de activos.
#' @param covariance_matrix Una matriz de covarianza de los rendimientos de activos.
#' @return Un objeto Plotly que representa los pesos óptimos del portafolio.
#' @examples
#'
#' # Ejemplo de uso:
#' returns <- matrix(c(0.1, 0.2, 0.15, 0.05, 0.1, 0.12), ncol = 2)
#' covariance_matrix <- matrix(c(0.005, -0.010, -0.010, 0.040), ncol = 2)
#' plot_portfolio_optimization(returns, covariance_matrix)
