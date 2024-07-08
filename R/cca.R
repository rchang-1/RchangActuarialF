## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#'
# Comparable Companies Analysis (CCA) Function
#' @title Comparable Companies Analysis (CCA) Function
#' @description Estimates the fair value of a stock using Comparable Companies Analysis.
#' @param comparable_pe_ratio The average Price-to-Earnings (P/E) Ratio of comparable companies.
#' @param earnings_per_share The current earnings per share.
#' @return The estimated fair value of the stock.
#' @examples
#' # Example usage:
#' comparable_pe_ratio <- 20
#' earnings_per_share <- 4
#' cca(comparable_pe_ratio, earnings_per_share)
#' @export
cca <- function(comparable_pe_ratio, earnings_per_share) {
  comparable_pe_ratio * earnings_per_share
}

