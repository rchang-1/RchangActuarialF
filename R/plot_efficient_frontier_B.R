##' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Plot Efficient Frontier using ggplot2
#'
#' This function plots the Efficient Frontier given a data frame containing Return, Risk, and Sharpe Ratio using ggplot2.
#'
#' @param frontier_data A data frame with columns Return, Risk, and Sharpe_Ratio.
#' Un marco de datos con las columnas Return, Risk y Sharpe_Ratio.
#'
#' @return A ggplot2 object representing the Efficient Frontier.
#' Un objeto ggplot2 que representa la Frontera Eficiente.
#'
#' @examples
#' # Example usage with efficient_frontier function
#' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' cov_matrix <- cov(returns)
#' frontier <- efficient_frontier(returns, cov_matrix)
#' plot_efficient_frontier_B(frontier)
#'
#' @import ggplot2
#' @export
# Función para graficar la Frontera Eficiente usando ggplot2
plot_efficient_frontier_B <- function(frontier_data, max_sharpe_data = NULL) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    install.packages("ggplot2")
    library(ggplot2)
  } else {
    library(ggplot2)
  }

  p <- ggplot(frontier_data, aes(x = Risk, y = Return, color = Sharpe_Ratio)) +
    geom_point(size = 2) +
    scale_color_gradient(low = "blue", high = "red", name = "Sharpe Ratio") +
    labs(title = "Efficient Frontier", x = "Risk (Standard Deviation)", y = "Return") +
    theme_minimal()

  # Add maximum Sharpe Ratio point with its coordinates
  if (!is.null(max_sharpe_data)) {
    p <- p +
      geom_point(data = max_sharpe_data, aes(x = Max_Sharpe_Risk, y = Max_Sharpe_Return),
                 color = "black", size = 4, shape = 21, fill = "white") +
      geom_text(data = max_sharpe_data,
                aes(label = paste("Optimal Point:", round(Max_Sharpe_Risk, 4), ",", round(Max_Sharpe_Return, 4))),
                vjust = -1, hjust = -0.2, size = 5, color = "black", fontface = "bold")
  }

  return(p)
}

# Ejemplo de uso
# returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
# colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
#
# # Graficar la Frontera Eficiente con el punto de máximo Sharpe Ratio etiquetado
# plot_efficient_frontier_B(frontier)
