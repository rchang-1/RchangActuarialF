## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
#' @title Price-to-Earnings (P/E) Ratio Model Function
#' @description Estimates the fair value of a stock using the Price-to-Earnings (P/E) Ratio.
#' @param earnings_per_share The current earnings per share.
#' @param pe_ratio The desired Price-to-Earnings (P/E) Ratio.
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
# earnings_per_share <- 3.5
# pe_ratio <- 15
# pre_ratio(earnings_per_share, pe_ratio)
#' @export
#' Price-to-Earnings (P/E) Ratio Model Function
pre_ratio <- function(earnings_per_share, pe_ratio) {
  earnings_per_share * pe_ratio
}
