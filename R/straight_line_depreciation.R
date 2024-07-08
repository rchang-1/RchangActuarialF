# Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
# Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica

#' Straight-Line Depreciation
#'
#' This function calculates the straight-line depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param salvage Salvage value of the asset at the end of its useful life.
#' @param life Useful life of the asset in years.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' straight_line_depreciation(10000, 2000, 5)
#' @export
straight_line_depreciation <- function(cost, salvage, life) {
  annual_depreciation <- (cost - salvage) / life
  depreciation <- rep(annual_depreciation, life)
  book_value <- cost - cumsum(depreciation)
  schedule <- data.frame(Year = 1:life, Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}
#' Straight-Line Depreciation
#'
#' This function calculates the straight-line depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param salvage Salvage value of the asset at the end of its useful life.
#' @param life Useful life of the asset in years.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' straight_line_depreciation(10000, 2000, 5)
#' @export
straight_line_depreciation <- function(cost, salvage, life) {
  annual_depreciation <- (cost - salvage) / life
  depreciation <- rep(annual_depreciation, life)
  book_value <- cost - cumsum(depreciation)
  schedule <- data.frame(Year = 1:life, Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}

# # Example usage:
# straight_line_depreciation(10000, 2000, 5)
