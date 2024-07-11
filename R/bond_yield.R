## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#
#' @title Bond Yield Function
#' @description Calculates the yield (rate of return) of a bond given its price, face value, coupon rate, and number of periods.
#'
#' @param face_value The face value (par value) of the bond.
#' @param price The current market price of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param nper The number of periods (years) until bond maturity.
#'
#' @return The bond yield.
#'
#' @examples
#' # Example usage:
# bond_yield(1000, 950, 0.05, 10)
#'
#' @export
# Function to calculate bond yield
bond_yield <- function(face_value, price, coupon_rate, nper) {
  # Present Value Function
  pv <- function(cash_flow, rate, nper) {
    cash_flow / (1 + rate)^nper
  }

  coupon <- face_value * coupon_rate

  # Function to find the yield
  yield_function <- function(rate) {
    sum(sapply(1:nper, function(t) pv(coupon, rate, t))) + pv(face_value, rate, nper) - price
  }

  # Use uniroot to find the yield
  uniroot(yield_function, c(0, 1))$root
}

# Explicación en español:
# Esta función `bond_yield` calcula el rendimiento (tasa de retorno) de un bono dado su precio, valor nominal, tasa de cupón y número de períodos.
#
# Parámetros:
# - `face_value`: El valor nominal (valor par) del bono.
# - `price`: El precio de mercado actual del bono.
# - `coupon_rate`: La tasa de cupón anual del bono.
# - `nper`: El número de períodos (años) hasta el vencimiento del bono.
#
# Salida:
# - El rendimiento del bono.
#
# Ejemplo Aplicado:
# bond_yield(1000, 950, 0.05, 10)
