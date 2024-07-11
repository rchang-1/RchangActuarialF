#' Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Calculate Internal Rate of Return (IRR)
#'
#' This function calculates the internal rate of return of a series of cash flows given an initial investment.
#'
#' @param initial_investment A numeric value representing the initial investment.
#' @param cash_flows A numeric vector of cash flows.
#' @return A numeric value representing the internal rate of return.
#'
#' @examples
# initial_investment <- -1000
# cash_flows <- c(100, 200, 300)
# calculate_irr(initial_investment, cash_flows)
#'
#' @export
# Function to calculate Internal Rate of Return (IRR)
calculate_irr <- function(initial_investment, cash_flows) {
  # NPV function
  npv_func <- function(rate) {
    npv <- initial_investment
    for (i in 1:length(cash_flows)) {
      npv <- npv + cash_flows[i] / (1 + rate)^i
    }
    npv
  }

  # Function to find the IRR
  irr_func <- function(rate) {
    npv_func(rate)
  }

  # Try a broader range for the root search
  result <- tryCatch(
    uniroot(irr_func, c(-0.999, 1))$root,
    error = function(e) {
      stop("Could not find a root in the interval [-0.999, 1]")
    }
  )

  return(result)
}
# Explicación en español:
# Esta función `calculate_irr` calcula la tasa interna de retorno (TIR) de una serie de flujos de caja dado una inversión inicial.
#
# Parámetros:
# - `initial_investment`: Un valor numérico que representa la inversión inicial.
# - `cash_flows`: Un vector numérico de flujos de caja.
#
# Salida:
# - Un valor numérico que representa la tasa interna de retorno.
#
# Ejemplo Aplicado:
# initial_investment <- -1000
# cash_flows <- c(100, 200, 300)
# calculate_irr(initial_investment, cash_flows)


