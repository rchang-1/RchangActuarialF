# Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
# Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' Sum-of-the-Years-Digits Depreciation
#'
#' This function calculates the sum-of-the-years-digits depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param salvage Salvage value of the asset at the end of its useful life.
#' @param life Useful life of the asset in years.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' sum_of_years_digits_depreciation(10000, 2000, 5)
#' @export
sum_of_years_digits_depreciation <- function(cost, salvage, life) {
  total_years <- sum(seq(1, life))
  depreciation <- numeric(life)
  book_value <- numeric(life)
  current_book_value <- cost
  for (year in 1:life) {
    remaining_life <- life - year + 1
    depreciation[year] <- (cost - salvage) * remaining_life / total_years
    current_book_value <- current_book_value - depreciation[year]
    book_value[year] <- current_book_value
  }
  schedule <- data.frame(Year = 1:life, Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}

#' Sum-of-the-Years-Digits Depreciation
#'
#' This function calculates the sum-of-the-years-digits depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param salvage Salvage value of the asset at the end of its useful life.
#' @param life Useful life of the asset in years.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' sum_of_years_digits_depreciation(10000, 2000, 5)
#' @export
sum_of_years_digits_depreciation <- function(cost, salvage, life) {
  total_years <- sum(seq(1, life))
  depreciation <- numeric(life)
  book_value <- numeric(life)
  current_book_value <- cost
  for (year in 1:life) {
    remaining_life <- life - year + 1
    depreciation[year] <- (cost - salvage) * remaining_life / total_years
    current_book_value <- current_book_value - depreciation[year]
    book_value[year] <- current_book_value
  }
  schedule <- data.frame(Year = 1:life, Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}
#
# # Example usage:
# sum_of_years_digits_depreciation(10000, 2000, 5)
