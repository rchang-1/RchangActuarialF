## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Candlestick Chart
#' @description Shows prices for each period as a continuous line. The box is clear if the closing price is higher than the opening price, or filled red if the closing is lower than the opening price.
#' @param ohlc Data frame with columns Date, Open, High, Low, Close.
#' @param start Start date to plot, if not specified, all dates in ohlc will be included.
#' @param end End date to plot.
#' @param main An overall title for the plot.
#' @param ... Additional arguments to be passed to ggplot.
#' @return A ggplot object showing the candlestick chart.
#' @examples
#' # Example usage:
# data <- data.frame(
#   Date = as.Date('2020-01-01') + 0:9,
#   Open = c(100, 102, 104, 103, 105, 107, 106, 108, 110, 111),
#   High = c(102, 104, 106, 105, 107, 109, 108, 110, 112, 113),
#   Low = c(98, 100, 102, 101, 103, 105, 104, 106, 108, 109),
#   Close = c(101, 103, 105, 104, 106, 108, 107, 109, 111, 112)
# )
#' candlestickChart(data, main = "Candlestick Chart Example")
#' @export

candlestickChart <- function(ohlc, start = NULL, end = NULL, main = "", ...) {
  library(ggplot2)
  data <- ohlc
  if (!is.null(start)) {
    data <- data[data$Date >= as.Date(start), ]
  }
  if (!is.null(end)) {
    data <- data[data$Date <= as.Date(end), ]
  }
  ggplot(data, aes(x = Date)) +
    geom_segment(aes(y = Low, yend = High, xend = Date)) +
    geom_rect(aes(ymin = pmin(Open, Close), ymax = pmax(Open, Close), xmin = Date - 0.2, xmax = Date + 0.2),
              fill = ifelse(data$Close > data$Open, "white", "red")) +
    ggtitle(main) +
    theme_minimal()
}

# Explicación en español:
# Esta función `candlestickChart` muestra los precios de cada periodo como una línea continua. La caja está vacía si el precio de cierre
# es mayor que el precio de apertura, o llena de rojo si el precio de cierre es menor que el precio de apertura.
#
# Parámetros:
# - `ohlc`: Data frame con columnas Date, Open, High, Low, Close.
# - `start`: Fecha de inicio para el gráfico, si no se especifica, se incluirán todas las fechas en `ohlc`.
# - `end`: Fecha de fin para el gráfico.
# - `main`: Título general para el gráfico.
#
# Ejemplos Aplicados:
# 1. Crear un gráfico de velas con datos ficticios.
#    data <- data.frame(
#      Date = as.Date('2020-01-01') + 0:9,
#      Open = c(100, 102, 104, 103, 105, 107, 106, 108, 110, 111),
#      High = c(102, 104, 106, 105, 107, 109, 108, 110, 112, 113),
#      Low = c(98, 100, 102, 101, 103, 105, 104, 106, 108, 109),
#      Close = c(101, 103, 105, 104, 106, 108, 107, 109, 111, 112)
#    )
#    candlestickChart(data, main = "Candlestick Chart Example")
