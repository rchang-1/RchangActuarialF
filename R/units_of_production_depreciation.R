# Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
# Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' Units of Production Depreciation
#'
#' This function calculates the units of production depreciation of an asset.
#'
#' @param cost Initial cost of the asset.
#' @param salvage Salvage value of the asset at the end of its useful life.
#' @param total_units Expected total units of production over the asset's useful life.
#' @param units_produced A numeric vector representing the units produced each year.
#' @return A data frame with columns Year, Depreciation, and Book Value.
#' @examples
#' # Example usage:
#' units_of_production_depreciation(10000, 2000, 50000, c(10000, 12000, 8000, 15000, 5000))
#' @export
units_of_production_depreciation <- function(cost, salvage, total_units, units_produced) {
  rate_per_unit <- (cost - salvage) / total_units
  depreciation <- rate_per_unit * units_produced
  book_value <- cost - cumsum(depreciation)
  schedule <- data.frame(Year = 1:length(units_produced), Depreciation = depreciation, Book_Value = book_value)
  return(schedule)
}

# Example usage:
# units_of_production_depreciation(10000, 2000, 50000, c(10000, 12000, 8000, 15000, 5000))
