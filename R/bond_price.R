## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
##
#' @title Bond Price Function
#' @description Calculates the price of a bond given its face value, coupon rate, market rate, and number of periods.
#' @param face_value The face value (par value) of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param market_rate The current market interest rate.
#' @param nper The number of periods (years) until bond maturity.
#' @return The price of the bond.
#' @examples
#' # Example 1: Calculate the price of a bond with a face value of $1000, 5% coupon rate, 3% market rate, and 10 years until maturity.
# bond_price(1000, 0.05, 0.03, 10)
# @export
# Bond Price Function
bond_price <- function(face_value, coupon_rate, market_rate, nper) {
  # Present Value Function
  pv <- function(cash_flow, rate, nper) {
    cash_flow / (1 + rate)^nper
  }

  coupon <- face_value * coupon_rate

  # Calculate present value of the coupon payments and face value
  pv_coupons <- sum(sapply(1:nper, function(t) pv(coupon, market_rate, t)))
  pv_face_value <- pv(face_value, market_rate, nper)

  # Sum of present values to get bond price
  pv_coupons + pv_face_value
}

# Explicación en español:
# Esta función `bond_price` calcula el precio de un bono dado su valor nominal, tasa de cupón, tasa de interés de mercado
# y número de períodos hasta el vencimiento del bono. Utiliza la fórmula del valor presente para calcular el valor actual
# de los pagos de cupones y el valor nominal del bono.
#
# Parámetros:
# - `face_value`: El valor nominal (valor par) del bono.
# - `coupon_rate`: La tasa de cupón anual del bono.
# - `market_rate`: La tasa de interés de mercado actual.
# - `nper`: El número de períodos (años) hasta el vencimiento del bono.
#
# Salida:
# - El precio del bono.
#
# Ejemplos Aplicados:
# 1. Calcular el precio de un bono con un valor nominal de $1000, tasa de cupón del 5%, tasa de interés de mercado del 3% y
#    10 años hasta el vencimiento.
#    bond_price(1000, 0.05, 0.03, 10)
