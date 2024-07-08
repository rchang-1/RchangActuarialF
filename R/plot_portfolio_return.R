#' Plot Portfolio Return
#'
#' This function plots the portfolio return given different asset weights and returns.
#'
#' @param weights A numeric vector of portfolio weights (proportions).
#' @param returns A numeric vector or matrix of asset returns.
#' @return A Plotly object representing the portfolio return.
#' @examples
#' # Example usage:
# weights <- c(0.5, 0.3, 0.2)
# asset_returns <- c(0.1, 0.05, 0.08)
# plot_portfolio_return(weights, asset_returns)
#' @import plotly
#' @export
plot_portfolio_return <- function(weights, returns) {
  # Verificar si plotly está instalado
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Calculate portfolio returns for different weight combinations
  portfolio_returns <- sapply(weights, function(w) portfolio_return(w, returns))

  # Create plotly plot
  plot_ly(x = weights, y = portfolio_returns, type = 'scatter', mode = 'lines+markers',
          marker = list(size = 10)) %>%
    layout(title = 'Portfolio Return vs. Weights',
           xaxis = list(title = 'Weights'),
           yaxis = list(title = 'Portfolio Return'))
}
