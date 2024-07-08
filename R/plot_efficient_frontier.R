## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Plot Efficient Frontier
#'
#' This function plots the Efficient Frontier given a data frame containing Return, Risk, and Sharpe Ratio.
#'
#' @param frontier_data A data frame with columns Return, Risk, and Sharpe_Ratio.
#' @return A ggplot2 object representing the Efficient Frontier.
#' @examples
#' # Example usage with efficient_frontier function
#' returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI)]))
#' cov_matrix <- cov(returns)
#' frontier <- efficient_frontier(returns, cov_matrix)
#' plot_efficient_frontier(frontier)
#' @import ggplot2
#' @export
plot_efficient_frontier <- function(frontier_data) {
  # Verificar si ggplot2 está instalado
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    install.packages("ggplot2")
    library(ggplot2)
  } else {
    library(ggplot2)
  }

  # Encontrar el índice del punto con el máximo Sharpe Ratio
  max_sharpe_index <- which.max(frontier_data$Sharpe_Ratio)

  ggplot(frontier_data, aes(x = Risk, y = Return)) +
    geom_line() +
    geom_point(aes(color = Sharpe_Ratio), size = 3) +
    geom_point(data = frontier_data[max_sharpe_index, ], aes(color = Sharpe_Ratio), size = 5, shape = 18) + # Punto más alto de Sharpe Ratio
    scale_color_gradient2(low = "red", mid = "yellow", high = "green", midpoint = mean(frontier_data$Sharpe_Ratio)) +
    labs(title = "Efficient Frontier", x = "Risk (Standard Deviation)", y = "Return", color = "Sharpe Ratio") +
    theme_minimal()
}
#'
#' #' # Example usage with efficient_frontier function
# data(EuStockMarkets)
# # Seleccionar las columnas CAC, DAX, FTSE, SMI
# returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI")]))
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
# plot_efficient_frontier(frontier)
