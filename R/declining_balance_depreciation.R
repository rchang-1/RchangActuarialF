# Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
# Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' Declining Balance Depreciation
#' This function calculates the declining balance depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param rate Depreciation rate.
#' @param life Useful life of the asset in years.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' declining_balance_depreciation(10000, 0.2, 5)
#' @export
declining_balance_depreciation <- function(cost, rate, life) {
  depreciation <- numeric(life)
  book_value <- numeric(life)
  current_book_value <- cost
  for (year in 1:life) {
    depreciation[year] <- current_book_value * rate
    current_book_value <- current_book_value - depreciation[year]
    book_value[year] <- current_book_value
  }
  schedule <- data.frame(Year = 1:life, Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}

# Example usage:
# declining_balance_depreciation(10000, 0.2, 5)
