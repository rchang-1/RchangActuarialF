## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Economic Value Added (EVA) Model Function
#' @description Calculates the Economic Value Added (EVA) for a stock.
#'
#' @param net_operating_profit_after_tax Net Operating Profit After Tax (NOPAT).
#' @param weighted_average_cost_of_capital Weighted Average Cost of Capital (WACC).
#' @return The estimated fair value of the stock.
#'
#' @examples
#' # Example usage:
#' net_operating_profit_after_tax <- 1000000
#' weighted_average_cost_of_capital <- 0.08
#' eva(net_operating_profit_after_tax, weighted_average_cost_of_capital)
#'
#' @export
#'
#' Esta función calcula el Valor Económico Agregado (EVA) para una acción.
#'
#' @param net_operating_profit_after_tax Ganancia Operativa Neta después de Impuestos (NOPAT).
#' @param weighted_average_cost_of_capital Costo Promedio Ponderado de Capital (WACC).
#' @return El valor estimado justo de la acción.
#'
#' @examples
#' # Ejemplo de uso:
# net_operating_profit_after_tax <- 1000000
# weighted_average_cost_of_capital <- 0.08
# eva(net_operating_profit_after_tax, weighted_average_cost_of_capital)
#'
#' @export

# Economic Value Added (EVA) Model Function
eva <- function(net_operating_profit_after_tax, weighted_average_cost_of_capital) {
  eva_value <- net_operating_profit_after_tax / weighted_average_cost_of_capital
  formatted_eva <- formatC(eva_value, format = "f", big.mark = ",", digits = 0)
  return(formatted_eva)
}
