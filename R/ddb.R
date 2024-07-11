## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Depreciation Expense Recognition – Double-Declining Balance
#' @description Computes depreciation expense recognition using the double-declining balance (DDB) method, which applies two times the straight-line rate to the declining balance.
#' @param cost Cost of long-lived assets.
#' @param rv Residual value of the long-lived assets at the end of its useful life. DDB does not explicitly use the asset’s residual value in the calculations, but depreciation ends once the estimated residual value has been reached. If the asset is expected to have no residual value, the DB method will never fully depreciate it, so the DB method is typically changed to straight-line at some point in the asset’s life.
#' @param t Length of the useful life.
#' @return A data frame showing the depreciation expense for each year.
#' @examples
# # Example usage:
# ddb(cost = 1200, rv = 200, t = 5)
#' @export

ddb <- function(cost, rv, t) {
  rate <- 2 / t
  depreciation <- numeric(t)
  book_value <- cost

  for (year in 1:t) {
    if (book_value > rv) {
      depreciation[year] <- rate * book_value
      book_value <- book_value - depreciation[year]
      if (book_value < rv) {
        depreciation[year] <- depreciation[year] - (rv - book_value)
        book_value <- rv
      }
    } else {
      depreciation[year] <- 0
    }
  }

  data.frame(Year = 1:t, Depreciation = depreciation)
}

# Explicación en español:
# Esta función `ddb` calcula el reconocimiento de los gastos de depreciación utilizando el método del balance decreciente doble (DDB), que aplica dos veces la tasa lineal al balance decreciente.
#
# Parámetros:
# - `cost`: Costo de los activos de larga duración.
# - `rv`: Valor residual de los activos de larga duración al final de su vida útil.
# - `t`: Duración de la vida útil.
#
# Ejemplos Aplicados:
# 1. Calcular la depreciación con un costo de $1200, un valor residual de $200 y una vida útil de 5 años.
#    ddb(cost = 1200, rv = 200, t = 5)
