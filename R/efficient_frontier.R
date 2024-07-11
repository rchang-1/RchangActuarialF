##' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Efficient Frontier Calculation
#'
#' This function calculates the Efficient Frontier for a portfolio given returns and covariance matrix.
#'
#' @param returns A matrix or data frame where each column represents the returns of an asset.
#' @param cov_matrix A covariance matrix of asset returns.
#' @param risk_free_rate The risk-free rate of return (default is 0.02).
#' @return A data frame with columns: Return (Expected Return), Risk (Standard Deviation), and Sharpe Ratio.
#' @examples
#' # Example with mtcars dataset
# data(EuStockMarkets)
# # Select columns CAC, DAX, FTSE, SMI
# returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI")]))
# cov_matrix <- cov(returns)
# efficient_frontier(returns, cov_matrix)
#'
#' @importFrom quadprog solve.QP

#' @export
#'
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

#' @export
#'
#' Esta función calcula la Frontera Eficiente para un portafolio dado los retornos y la matriz de covarianza.
#'
#' @param returns Una matriz o data frame donde cada columna representa los retornos de un activo.
#' @param cov_matrix Una matriz de covarianza de los retornos de los activos.
#' @param risk_free_rate La tasa de interés libre de riesgo (por defecto es 0.02).
#' @return Un data frame con las columnas: Return (Retorno Esperado), Risk (Desviación Estándar), y Sharpe Ratio.
#' @examples
#' # Ejemplo con el conjunto de datos EuStockMarkets
#' data(EuStockMarkets)
#' # Seleccionar las columnas CAC, DAX, FTSE, SMI
#' returns <- as.matrix(scale(EuStockMarkets[, c("CAC", "DAX", "FTSE", "SMI")]))
#' cov_matrix <- cov(returns)
#' efficient_frontier(returns, cov_matrix)
#'
#' @importFrom quadprog solve.QP
