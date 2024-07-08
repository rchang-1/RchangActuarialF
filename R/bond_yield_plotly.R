## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' Bond Yield Function Plot using Plotly
#'
#' This function plots the bond yield function given the bond parameters.
#'
#' @param face_value The face value (par value) of the bond.
#' @param price The current market price of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param nper The number of periods (years) until bond maturity.
#'
#' @return A plotly object representing the bond yield function.
#'
#' @examples
#' # Example usage:
# bond_yield_plotly(1000, 950, 0.05, 10)
#' @export
# Function to plot bond yield function
bond_yield_plotly <- function(face_value, price, coupon_rate, nper) {
  # Verificar si plotly está instalado
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Present Value Function
  pv <- function(cash_flow, rate, nper) {
    cash_flow / (1 + rate)^nper
  }

  # Function to calculate bond yield
  yield_function <- function(rate) {
    sum(sapply(1:nper, function(t) pv(face_value * coupon_rate, rate, t))) + pv(face_value, rate, nper) - price
  }

  # Vector of interest rates
  rates <- seq(0, 0.2, by = 0.001)

  # Calculate yields for each rate
  yields <- sapply(rates, yield_function)

  # Create plotly plot
  plot_ly(x = ~rates, y = ~yields, type = 'scatter', mode = 'lines',
          line = list(color = 'blue', width = 2)) %>%
    add_trace(x = ~uniroot(yield_function, c(0, 1))$root, y = 0, type = 'scatter', mode = 'markers',
              marker = list(color = 'red', size = 10)) %>%
    layout(title = 'Bond Yield Function',
           xaxis = list(title = 'Interest Rate'),
           yaxis = list(title = 'Yield'),
           shapes = list(
             list(type = 'line', x0 = 0, x1 = max(rates), y0 = 0, y1 = 0,
                  line = list(color = 'black', width = 1, dash = 'dash'))
           ))
}
