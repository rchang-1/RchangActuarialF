##' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#Generate a random dataset with stock tickers
# set.seed(123)  # Set seed for reproducibility
#
# tickers <- c("AMZN", "MSFT", "TSLA", "AAPL", "NKE")
# num_assets <- length(tickers)
#
# # Random return data
# returns <- matrix(rnorm(1000 * num_assets, mean = 150, sd = 25), nrow = 100, ncol = num_assets)
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

#' Plot Efficient Frontier using ggplot2
#'
#' This function plots the Efficient Frontier given a data frame containing Return, Risk, and Sharpe Ratio using ggplot2.
#'
#' @param frontier_data A data frame with columns Return, Risk, and Sharpe_Ratio.
#' @param max_sharpe_data A data frame with columns Max_Sharpe_Risk and Max_Sharpe_Return.
#' @return A ggplot2 object representing the Efficient Frontier.
#' @examples
#' # Example usage with efficient_frontier function
#' returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
#' colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
#' cov_matrix <- cov(returns)
#' frontier <- efficient_frontier(returns, cov_matrix)
#' plot_efficient_frontier_B(frontier)
#' @import ggplot2
#' @export
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

  if (!is.null(max_sharpe_data)) {
    p <- p +
      geom_point(data = max_sharpe_data, aes(x = Max_Sharpe_Risk, y = Max_Sharpe_Return),
                 color = "red", size = 4, shape = 21, fill = "white")
  }

  return(p)
}

# Example usage
# returns <- matrix(rnorm(100 * 4, mean = 0.01, sd = 0.02), nrow = 100, ncol = 4)
# colnames(returns) <- c("AMZN", "MSFT", "TSLA", "AAPL")
# cov_matrix <- cov(returns)
# frontier <- efficient_frontier(returns, cov_matrix)
#
# # Define the maximum Sharpe Ratio point (example)
# max_sharpe_data <- data.frame(Max_Sharpe_Risk = 0.04, Max_Sharpe_Return = 0.15)
#
# # Plot the Efficient Frontier with the maximum Sharpe Ratio point
# plot_efficient_frontier_B(frontier, max_sharpe_data)
