## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Net Present Value (NPV) Plot Function
#' @description Plots the NPV against a range of discount rates.
#'
#' This function plots the Net Present Value (NPV) against a range of discount rates using Plotly.
#'
#' @param cash_flows A numeric vector of cash flows.
#' @param rates A numeric vector of discount rates to plot. Default is seq(0, 0.2, by = 0.01).
#' @return A plot of NPV against discount rates.
#'
#' @examples
#' # Example usage:
#' # Define cash flows for the example
#' # cash_flows <- c(-1000, 200, 300, 400)
#' npv_plot(cash_flows)
#' @export

#' Función para graficar el Valor Actual Neto (VAN) contra tasas de descuento
#'
#' Esta función grafica el Valor Actual Neto (VAN) contra un rango de tasas de descuento utilizando Plotly.
#'
#' @param cash_flows Un vector numérico de flujos de efectivo.
#' @param rates Un vector numérico de tasas de descuento para graficar. Por defecto es seq(0, 0.2, by = 0.01).
#' @return Un gráfico del VAN contra las tasas de descuento.
#'
#' @examples
#' # Ejemplo de uso:
#' # Definir flujos de efectivo para el ejemplo
# cash_flows <- c(-1000, 200, 300, 800)
# npv_plot(cash_flows)
#' @export
npv_plot <- function(cash_flows, rates = seq(0, 0.2, by = 0.01)) {
  # Verificar si plotly está instalado
  if (!requireNamespace("plotly", quietly = TRUE)) {
    install.packages("plotly")
    library(plotly)
  } else {
    library(plotly)
  }

  # Calcular los valores de NPV para cada tasa de descuento
  npv_values <- sapply(rates, function(rate) npv(rate, cash_flows))

  # Crear el gráfico interactivo usando Plotly
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

