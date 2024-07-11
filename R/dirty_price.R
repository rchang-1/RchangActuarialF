## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
##' @title Calculate Dirty Price
#' @description Calculates the dirty price of a bond given the clean price and the accrued interest.
#' @param clean_price The clean price of the bond.
#' @param accrued_interest The accrued interest of the bond.
#' @return The dirty price of the bond.
#' @examples
#' # Example usage:
#' dirty_price(100, 2)
#' @export
dirty_price <- function(clean_price, accrued_interest) {
  # Calcular el precio sucio
  price <- clean_price + accrued_interest

  # Retornar el precio sucio
  return(price)
}


#' @title Calcular Precio Sucio
#' @description Calcula el precio sucio de un bono dado el precio limpio y el interés acumulado.
#' @param clean_price El precio limpio del bono.
#' @param accrued_interest El interés acumulado del bono.
#' @return El precio sucio del bono.
#' @examples
#' # Ejemplo de uso:
#' dirty_price(100, 2)
