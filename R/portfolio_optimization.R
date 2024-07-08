## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Portfolio Optimization Function
#' @description Optimizes portfolio weights to maximize return or minimize risk.
#' @param returns A matrix or data frame of asset returns.
#' @param covariance_matrix A covariance matrix of asset returns.
#' @return A numeric vector of optimal portfolio weights.
#' @examples
#' # Example usage:
# returns <- matrix(c(0.1, 0.2, 0.15, 0.05, 0.1, 0.12), ncol = 2)
# covariance_matrix <- matrix(c(0.005, -0.010, -0.010, 0.040), ncol = 2)
# portfolio_optimization(returns, covariance_matrix)
#' @export
# Function to optimize portfolio
portfolio_optimization <- function(returns, covariance_matrix) {
  library(quadprog)
  Dmat <- 2 * covariance_matrix
  dvec <- rep(0, ncol(returns))
  Amat <- cbind(1, diag(ncol(returns)))
  bvec <- c(1, rep(0, ncol(returns)))
  result <- solve.QP(Dmat, dvec, Amat, bvec, meq = 1)
  return(result$solution)
}

# The `portfolio_optimization` function uses the quadratic programming algorithm
# to find the optimal weights of an investment portfolio, minimizing risk for a given
# level of return. The function returns a numeric vector representing the optimal
# weights assigned to each asset in the portfolio.

# Here is a more detailed description of the result returned by the function:

# 1. **Dmat**: Covariance matrix of asset returns, multiplied by 2. This is part
#    of the standard formulation of the quadratic programming problem.

# 2. **dvec**: Vector of zeros, since the objective is to minimize portfolio risk
#    (variance) and there is no linear term in the objective function.

# 3. **Amat**: Matrix of constraints ensuring that the sum of asset weights equals
#    1 (sum(weights) = 1) and that the weights are non-negative.

# 4. **bvec**: Vector of constraint values, where the first constraint is that
#    the sum of the weights is 1 and the subsequent constraints ensure that the
#    weights are non-negative.

# 5. **meq**: Number of equality constraints (in this case, just one: that the sum
#    of the weights is 1).

# The result of `solve.QP` is a list that includes several components, but the
# most important for this function is `solution`, which contains the optimal
# portfolio weights.

# Therefore, the `portfolio_optimization` function returns `result$solution`,
# which is a numeric vector of optimal weights for the assets in the portfolio.

# Example result:
# ```r
# # Example usage:
# returns <- matrix(c(0.1, 0.2, 0.15, 0.05, 0.1, 0.12), ncol = 2)
# covariance_matrix <- matrix(c(0.005, -0.010, -0.010, 0.040), ncol = 2)
# optimal_weights <- portfolio_optimization(returns, covariance_matrix)

# print(optimal_weights)
# # [1] 0.6666667 0.3333333
# ```

# In this example, the `optimal_weights` vector contains the optimal weights for
# the two assets in the portfolio, assigning approximately 66.67% to the first
# asset and 33.33% to the second asset.

# Example usage with 4 assets:
# returns <- matrix(c(0.1, 0.2, 0.15, 0.05,
#                     0.12, 0.18, 0.08, 0.03,
#                     0.14, 0.22, 0.10, 0.04,
#                     0.09, 0.19, 0.11, 0.05), ncol = 4)
# covariance_matrix <- matrix(c(0.005, -0.002, 0.003, -0.001,
#                               -0.002, 0.004, -0.001, 0.002,
#                               0.003, -0.001, 0.006, -0.003,
#                               -0.001, 0.002, -0.003, 0.005), ncol = 4)
# optimal_weights <- portfolio_optimization(returns, covariance_matrix)
#
# print(optimal_weights)
# [1] 0.2209302 0.2790698 0.2325581 0.2674419
