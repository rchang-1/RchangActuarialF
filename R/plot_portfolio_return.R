#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#
#' @title Plot Portfolio Return
#'
#' @description This function plots the portfolio return given different asset weights and returns.
#'
#' Esta función grafica el rendimiento de un portafolio dado diferentes pesos de activos y sus rendimientos.
#'
#' @param weights A numeric vector of portfolio weights (proportions).
#' Vector numérico de los pesos del portafolio (proporciones).
#'
#' @param returns A numeric vector or matrix of asset returns.
#' Vector numérico o matriz de rendimientos de activos.
#'
#' @return A Plotly object representing the portfolio return.
#' Objeto Plotly que representa el rendimiento del portafolio.
#'
#' @examples
#' # Example usage:
#' # Ejemplo de uso:
#' # Generate example data
#' # Generar datos de ejemplo
# set.seed(123)
# weights <- c(0.5, 0.3, 0.2)
# asset_returns <- matrix(rnorm(100 * length(weights), mean = 0.01, sd = 0.02), nrow = 100, ncol = length(weights))
# colnames(asset_returns) <- paste0("Activo_", 1:length(weights))

#' #' # Plot portfolio return
#' #' # Graficar el rendimiento del portafolio
#' plot_portfolio_return(weights, asset_returns)
#'
#' @import plotly
#' @export
plot_portfolio_return <- function(weights, returns) {
  # Check if plotly is installed, install if not
  # Verificar si plotly está instalado, instalar si no está
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Calculate portfolio returns for different weight combinations
  # Calcular el rendimiento del portafolio para diferentes combinaciones de pesos
  portfolio_returns <- apply(returns, 1, function(row) sum(weights * row))

  # Create plotly plot
  # Crear gráfico de plotly
  plot_ly(x = 1:length(portfolio_returns), y = portfolio_returns, type = 'scatter', mode = 'lines',
          marker = list(size = 10)) %>%
    layout(title = 'Portfolio Return over Time',
           xaxis = list(title = 'Time'),
           yaxis = list(title = 'Portfolio Return'))
}
