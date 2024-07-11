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

  # Crear el gráfico usando ggplot
  p <- ggplot(frontier_data, aes(x = Risk, y = Return, color = Sharpe_Ratio)) +
    geom_line() +
    geom_point(size = 3) +
    geom_text(data = frontier_data[max_sharpe_index, ],
              aes(label = paste("Max Sharpe Ratio:", round(Sharpe_Ratio, 2)), x = Risk, y = Return),
              vjust = -1, hjust = -0.2, size = 5, color = "black", fontface = "bold") + # Etiqueta con coordenadas
    scale_color_gradient2(low = "red", mid = "yellow", high = "green", midpoint = mean(frontier_data$Sharpe_Ratio)) +
    labs(title = "Efficient Frontier", x = "Risk (Standard Deviation)", y = "Return", color = "Sharpe Ratio") +
    theme_minimal()

  return(p)
}


#'
#' #' # Example usage with efficient_frontier function
# data(EuStockMarkets)
# # Seleccionar las columnas CAC, DAX, FTSE, SMI
# returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI")]))
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
# plot_efficient_frontier(frontier)

#' Graficar Frontera Eficiente
#'
#' Esta función grafica la Frontera Eficiente dados un marco de datos que contiene Return (Retorno), Risk (Riesgo), y Sharpe Ratio.
#'
#' @param frontier_data Un marco de datos con las columnas Return, Risk, y Sharpe_Ratio.
#' @return Un objeto ggplot2 que representa la Frontera Eficiente.
#' @examples
#' # Ejemplo de uso con la función efficient_frontier
# returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI")]))
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
# plot_efficient_frontier(frontier)
