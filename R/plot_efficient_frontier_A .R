#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'

# # Generate a random dataset with stock tickers
# set.seed(123)  # Set seed for reproducibility
#
# tickers <- c("AMZN", "MSFT", "TSLA", "AAPL")
# num_assets <- length(tickers)
#
# # Random return data
# returns <- matrix(rnorm(100 * num_assets, mean = 0.01, sd = 0.02), nrow = 100, ncol = num_assets)
# colnames(returns) <- tickers
# cov_matrix <- cov(returns)
#
# # Show the first few rows of the generated dataset
# head(returns)

#' Calculate Efficient Frontier
#'
#' This function calculates the Efficient Frontier given asset returns and covariance matrix.
#'
#' @param returns A matrix or data frame of asset returns.
#' @param cov_matrix A covariance matrix of asset returns.
#' @param risk_free_rate The risk-free rate (default is 0.02).
#' @return A data frame with columns Return, Risk, and Sharpe_Ratio.
#' @examples
#' # Example usage:
#' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' cov_matrix <- cov(returns)
#' efficient_frontier(returns, cov_matrix)
#' @import quadprog
#' @export
efficient_frontier <- function(returns, cov_matrix, risk_free_rate = 0.02) {
  if (!requireNamespace("quadprog", quietly = TRUE)) {
    install.packages("quadprog")
    library(quadprog)
  } else {
    library(quadprog)
  }

  num_assets <- ncol(returns)
  Amat <- cbind(1, diag(num_assets))
  bvec <- c(1, rep(0, num_assets))

  Dmat <- 2 * cov_matrix
  dvec <- rep(0, num_assets)

  port_means <- numeric()
  port_sds <- numeric()
  sharpe_ratios <- numeric()

  for (i in seq(0, 1, length.out = 100)) {
    w <- solve.QP(Dmat, dvec, Amat, c(i, rep(0, num_assets)), meq = 1)$solution
    port_return <- sum(w * colMeans(returns))
    port_std_dev <- sqrt(t(w) %*% cov_matrix %*% w)
    port_sharpe <- (port_return - risk_free_rate) / port_std_dev

    port_means <- c(port_means, port_return)
    port_sds <- c(port_sds, port_std_dev)
    sharpe_ratios <- c(sharpe_ratios, port_sharpe)
  }

  frontier <- data.frame(Return = port_means, Risk = port_sds, Sharpe_Ratio = sharpe_ratios)

  return(frontier)
}

#' Plot Efficient Frontier
#'
#' This function plots the Efficient Frontier given a data frame containing Return, Risk, and Sharpe Ratio.
#'
#' @param frontier_data A data frame with columns Return, Risk, and Sharpe_Ratio.
#' @param max_sharpe_data A data frame with columns Max_Sharpe_Risk and Max_Sharpe_Return.
#' @return A Plotly object representing the Efficient Frontier.
#' @examples
#' # Example usage with efficient_frontier function
#' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' cov_matrix <- cov(returns)
#' frontier <- efficient_frontier(returns, cov_matrix)
#' plot_efficient_frontier_A(frontier)
#' @import plotly
#' @export
plot_efficient_frontier_A <- function(frontier_data, max_sharpe_data = NULL) {
  # Check if plotly is installed
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Ensure frontier_data is a data frame
  frontier_data <- as.data.frame(frontier_data)

  # Plotly scatter plot
  p <- plot_ly(frontier_data, x = ~Risk, y = ~Return, type = 'scatter', mode = 'markers',
               marker = list(color = ~Sharpe_Ratio, colorscale = 'plasma', colorbar = list(title = 'Sharpe Ratio')))

  # Add the red point for the maximum Sharpe Ratio if provided
  if (!is.null(max_sharpe_data)) {
    max_sharpe_data <- as.data.frame(max_sharpe_data)  # Ensure max_sharpe_data is a data frame
    p <- p %>% add_markers(data = max_sharpe_data, x = ~Max_Sharpe_Risk, y = ~Max_Sharpe_Return,
                           marker = list(color = 'red', size = 10, symbol = 'circle-open'))
  }

  # Customize the layout
  p <- p %>% layout(title = 'Efficient Frontier',
                    xaxis = list(title = 'Risk (Standard Deviation)'),
                    yaxis = list(title = 'Return'))

  return(p)
}

# Ejemplo de uso
#' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' cov_matrix <- cov(returns)
#' frontier <- efficient_frontier(returns, cov_matrix)
#'
#' # Definir el punto del Máximo Sharpe Ratio (ejemplo)
#' max_sharpe_data <- data.frame(Max_Sharpe_Risk = 0.04, Max_Sharpe_Return = 0.15)
#'
#' # Graficar la Frontera Eficiente con el punto del Máximo Sharpe Ratio
#' plot_efficient_frontier_A(frontier, max_sharpe_data)
#'
#' #' # Generar un dataset aleatorio con tickers de acciones
#' #' set.seed(123)  # Establecer semilla para reproducibilidad
#'
#' tickers <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' num_assets <- length(tickers)
#'
#' # Datos aleatorios de rendimientos
#' returns <- matrix(rnorm(100 * num_assets, mean = 0.01, sd = 0.02), nrow = 100, ncol = num_assets)
#' colnames(returns) <- tickers
#' cov_matrix <- cov(returns)
#'
#' # Mostrar los primeros registros del dataset generado
#' head(returns)
#'
#' #' Calcular la Frontera Eficiente
#' #'
#' #' Esta función calcula la Frontera Eficiente dados los rendimientos de los activos y la matriz de covarianza.
#' #'
#' #' @param returns Una matriz o data frame de rendimientos de activos.
#' #' @param cov_matrix Una matriz de covarianza de los rendimientos de activos.
#' #' @param risk_free_rate La tasa libre de riesgo (por defecto es 0.02).
#' #' @return Un data frame con las columnas Return, Risk, y Sharpe_Ratio.
#' #' @examples
#' #' # Ejemplo de uso:
#' #' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' #' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' #' cov_matrix <- cov(returns)
#' #' efficient_frontier(returns, cov_matrix)
#' #' @import quadprog
#' #' @export
#' efficient_frontier <- function(returns, cov_matrix, risk_free_rate = 0.02) {
#'   if (!requireNamespace("quadprog", quietly = TRUE)) {
#'     install.packages("quadprog")
#'     library(quadprog)
#'   } else {
#'     library(quadprog)
#'   }
#'
#'   num_assets <- ncol(returns)
#'   Amat <- cbind(1, diag(num_assets))
#'   bvec <- c(1, rep(0, num_assets))
#'
#'   Dmat <- 2 * cov_matrix
#'   dvec <- rep(0, num_assets)
#'
#'   port_means <- numeric()
#'   port_sds <- numeric()
#'   sharpe_ratios <- numeric()
#'
#'   for (i in seq(0, 1, length.out = 100)) {
#'     w <- solve.QP(Dmat, dvec, Amat, c(i, rep(0, num_assets)), meq = 1)$solution
#'     port_return <- sum(w * colMeans(returns))
#'     port_std_dev <- sqrt(t(w) %*% cov_matrix %*% w)
#'     port_sharpe <- (port_return - risk_free_rate) / port_std_dev
#'
#'     port_means <- c(port_means, port_return)
#'     port_sds <- c(port_sds, port_std_dev)
#'     sharpe_ratios <- c(sharpe_ratios, port_sharpe)
#'   }
#'
#'   frontier <- data.frame(Return = port_means, Risk = port_sds, Sharpe_Ratio = sharpe_ratios)
#'
#'   return(frontier)
#' }
#'
#' #' Graficar la Frontera Eficiente
#' #'
#' #' Esta función grafica la Frontera Eficiente dado un data frame que contiene Return, Risk, y Sharpe Ratio.
#' #'
#' #' @param frontier_data Un data frame con las columnas Return, Risk, y Sharpe_Ratio.
#' #' @param max_sharpe_data Un data frame con las columnas Max_Sharpe_Risk y Max_Sharpe_Return.
#' #' @return Un objeto Plotly que representa la Frontera Eficiente.
#' #' @examples
#' #' # Ejemplo de uso con la función efficient_frontier
#' #' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' #' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' #' cov_matrix <- cov(returns)
#' #' frontier <- efficient_frontier(returns, cov_matrix)
#' #' plot_efficient_frontier_A(frontier)
#' #' @import plotly
#' #' @export
#' plot_efficient_frontier_A <- function(frontier_data, max_sharpe_data = NULL) {
#'   # Verificar si plotly está instalado
#'   if (!requireNamespace("plotly", quietly = TRUE)) {
#'     install.packages("plotly")
#'     library(plotly)
#'   } else {
#'     library(plotly)
#'   }
#'
#'   # Asegurarse de que frontier_data es un data frame
#'   frontier_data <- as.data.frame(frontier_data)
#'
#'   # Plotly scatter plot
#'   p <- plot_ly(frontier_data, x = ~Risk, y = ~Return, type = 'scatter', mode = 'markers',
#'                marker = list(color = ~Sharpe_Ratio, colorscale = 'plasma', colorbar = list(title = 'Sharpe Ratio')))
#'
#'   # Añadir el punto rojo para el máximo Sharpe Ratio si se proporciona
#'   if (!is.null(max_sharpe_data)) {
#'     max_sharpe_data <- as.data.frame(max_sharpe_data)  # Asegurarse de que max_sharpe_data es un data frame
#'     p <- p %>% add_markers(data = max_sharpe_data, x = ~Max_Sharpe_Risk, y = ~Max_Sharpe_Return,
#'                            marker = list(color = 'red', size = 10, symbol = 'circle-open'))
#'   }
#'
#'   # Personalizar el diseño
#'   p <- p %>% layout(title = 'Frontera Eficiente',
#'                     xaxis = list(title = 'Riesgo (Desviación Estándar)'),
#'                     yaxis = list(title = 'Retorno'))
#'
#'   return(p)
#' }

# Ejemplo de uso
# returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
# colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
#
# # Definir el punto del Máximo Sharpe Ratio (ejemplo)
# max_sharpe_data <- data.frame(Max_Sharpe_Risk = 0.04, Max_Sharpe_Return = 0.15)
#
# # Graficar la Frontera Eficiente con el punto del Máximo Sharpe Ratio
# plot_efficient_frontier_A(frontier, max_sharpe_data)
