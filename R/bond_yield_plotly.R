## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Professor of PhD and Master's in Systems, Economics, and Statistics for Scientific Research
##
#' @title Bond Yield Function Plot using Plotly
#' @description This function plots the bond yield function given the bond parameters.
#'
#' @param face_value The face value (par value) of the bond.
#' @param price The current market price of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param nper The number of periods (years) until bond maturity.
#'
#' @return A plotly object representing the bond yield function.
#'
#' @examples
#' # Example 1: Plot the bond yield function for a bond with a face value of $1000, current price $950,
#' #            5% coupon rate, and 10 years until maturity.
# bond_yield_plotly(1000, 950, 0.05, 10)
#'
#' # Example 2: Plot the bond yield function for a bond with a face value of $500, current price $480,
#' #            4.5% coupon rate, and 5 years until maturity.
# bond_yield_plotly(500, 480, 0.045, 5)
#' @export
bond_yield_plotly <- function(face_value, price, coupon_rate, nper) {
  # Check if plotly is installed
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

# Explicación en español:
# Esta función `bond_yield_plotly` grafica la función de rendimiento de un bono dado los parámetros del bono.
#
# Parámetros:
# - `face_value`: El valor nominal (valor par) del bono.
# - `price`: El precio de mercado actual del bono.
# - `coupon_rate`: La tasa de cupón anual del bono.
# - `nper`: El número de períodos (años) hasta el vencimiento del bono.
#
# Salida:
# - Un objeto plotly que representa la función de rendimiento del bono.
#
# Ejemplos Aplicados:
# 1. Graficar la función de rendimiento de un bono con valor nominal de $1000, precio actual $950,
#    tasa de cupón del 5% y 10 años hasta el vencimiento.
#    bond_yield_plotly(1000, 950, 0.05, 10)
#
# 2. Graficar la función de rendimiento de un bono con valor nominal de $500, precio actual $480,
#    tasa de cupón del 4.5% y 5 años hasta el vencimiento.
#    bond_yield_plotly(500, 480, 0.045, 5)
