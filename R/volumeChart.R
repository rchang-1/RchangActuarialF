## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Volume Chart
#' @description Shows each period’s volume as a vertical line.
#' @param ohlc Output from get.ohlc.yahoo or get.ohlc.google.
#' @param main An overall title for the plot.
#' @pagoogle <- get.ohlc.yahoo("GOOG");
# data <- data.frame(
#   Date = as.Date('2020-01-01') + 0:9,
#   Volume = c(100, 200, 150, 300, 250, 400, 350, 450, 500, 550)
# )
# volumeChart(data, main = "Volume Chart Example")
#' @return A ggplot object showing the volume chart.
#' @examples
#' # Example usage:

#' @export

volumeChart <- function(ohlc, main = "", ...) {
  ggplot(ohlc, aes(x = Date, y = Volume)) +
    geom_bar(stat = "identity") +
    ggtitle(main) +
    theme_minimal()
}

# Explicación en español:
# Esta función `volumeChart` muestra el volumen de cada periodo como una línea vertical.
#
# Parámetros:
# - `ohlc`: Salida de get.ohlc.yahoo o get.ohlc.google.
# - `main`: Título general para el gráfico.
