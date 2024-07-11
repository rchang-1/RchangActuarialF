## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Download Stock Prices from Yahoo Finance
#' @description Downloads stock prices from Yahoo Finance (open, high, low, close, volume, adjusted).
#'
#' @param symbol Symbol of stock, e.g., AAPL, GOOG, SPX.
#' @param start Start date, e.g., 2013-01-01.
#' @param end End date, e.g., 2013-08-06.
#' @param freq Time interval, e.g., d: daily, w: weekly, m: monthly.
#'
#' @return Data frame with columns: Date, Open, High, Low, Close, Volume, Adjusted.
#'
#' @examples
#' # Example usage:
#' # get.ohlc.yahoo(symbol="AAPL")
#' # get.ohlc.yahoo(symbol="AAPL", start="2013-08-01", freq="d")
# get.ohlc.yahoo(symbol="AAPL", start="2013-07-01", end="2013-08-01", freq="w")
#'
#' @seealso get.ohlcs.yahoo get.ohlcs.google
#'
#' @export
get.ohlc.yahoo <- function(symbol, start = "firstDay", end = "today", freq = "d") {
  # Verificar e instalar quantmod si es necesario
  if (!require("quantmod")) {
    install.packages("quantmod")
    library(quantmod)
  }

  # Descargar los datos de las acciones desde Yahoo Finance
  stock_data <- getSymbols(symbol, src = "yahoo", from = start, to = end, auto.assign = FALSE, periodicity = freq)

  # Convertir a data frame
  stock_data_df <- data.frame(Date = index(stock_data), coredata(stock_data))
  colnames(stock_data_df) <- c("Date", "Open", "High", "Low", "Close", "Volume", "Adjusted")

  return(stock_data_df)
}

# Explicación en español:
# Esta función `get.ohlc.yahoo` descarga los precios de las acciones desde Yahoo Finance (apertura, máximo, mínimo, cierre, volumen, ajustado).
#
# Parámetros:
# - `symbol`: Símbolo de la acción, por ejemplo, AAPL, GOOG, SPX.
# - `start`: Fecha de inicio, por ejemplo, 2013-01-01.
# - `end`: Fecha de fin, por ejemplo, 2013-08-06.
# - `freq`: Intervalo de tiempo, por ejemplo, d: diario, w: semanal, m: mensual.
#
# Retorno:
# Un data frame con columnas: Date, Open, High, Low, Close, Volume, Adjusted.
#
# Ejemplos:
# 1. Descargar precios de acciones para AAPL desde Yahoo Finance:
#    get.ohlc.yahoo(symbol="AAPL")
# 2. Descargar precios de acciones para AAPL desde el 2013-08-01 con datos diarios:
#    get.ohlc.yahoo(symbol="AAPL", start="2013-08-01", freq="d")
# 3. Descargar precios de acciones para AAPL desde el 2013-07-01 hasta el 2013-08-01 con datos semanales:
#    get.ohlc.yahoo(symbol="AAPL", start="2013-07-01", end="2013-08-01", freq="w")
