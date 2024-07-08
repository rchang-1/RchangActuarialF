## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Net Present Value (NPV) Plot Function
#' @description Plots the NPV against a range of discount rates.
#' @param cash_flows A numeric vector of cash flows.
#' @param rates A numeric vector of discount rates to plot. Default is seq(0, 0.2, by = 0.01).
#' @return A plot of NPV against discount rates.
#' @examples
#' # Example usage:
#' @export
#'
# Function to plot NPV against discount rates
# Function to plot NPV against discount rates using plotly
npv_plot <- function(cash_flows, rates = seq(0, 0.2, by = 0.01)) {
  # Verificar si plotly está instalado
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  npv_values <- sapply(rates, function(rate) npv(rate, cash_flows))

  plot_ly(x = ~rates, y = ~npv_values, type = 'scatter', mode = 'lines',
          line = list(color = 'blue', width = 2)) %>%
    layout(title = 'NPV vs. Discount Rate',
           xaxis = list(title = 'Discount Rate'),
           yaxis = list(title = 'Net Present Value (NPV)'),
           shapes = list(
             list(type = 'line',
                  x0 = min(rates), x1 = max(rates),
                  y0 = 0, y1 = 0,
                  line = list(color = 'red', dash = 'dash'))
           ))
}
