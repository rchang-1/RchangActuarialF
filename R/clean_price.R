## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Ciéntífica
#
#' @title Clean Price of a Bond
#' @description Calculates the clean price of a bond given its dirty price, coupon rate, days since last coupon, days in coupon period, and face value.
#' @param dirty_price The dirty price (full price) of the bond.
#' @param coupon_rate The annual coupon rate of the bond.
#' @param days_since_last_coupon The number of days since the last coupon payment.
#' @param days_in_coupon_period The total number of days in the coupon period.
#' @param face_value The face value (par value) of the bond.
#' @param coupons_per_year The number of coupon payments per year.
#' @return The clean price of the bond.
#' @examples
#' # Example usage:
# clean_price(960, 0.05, 60, 180, 1000, 2)
clean_price <- function(dirty_price, coupon_rate, days_since_last_coupon, days_in_coupon_period, face_value, coupons_per_year) {
  # Calculate accrued interest
  accrued_interest <- (coupon_rate * face_value / coupons_per_year) * (days_since_last_coupon / days_in_coupon_period)

  # Calculate clean price
  clean_price <- dirty_price - accrued_interest

  return(clean_price)
}

# Explicación y Uso:
#
# Precio Sucio (dirty_price): Esta función toma el precio limpio del bono, la tasa de cupón, los días transcurridos desde el último pago de cupón, los días en el período del cupón, el valor nominal del bono y la cantidad de pagos de cupón por año para calcular el precio sucio completo del bono.
#
# Precio Limpio (clean_price): Esta función toma el precio sucio del bono, la tasa de cupón, los días transcurridos desde el último pago de cupón, los días en el período del cupón, el valor nominal del bono y la cantidad de pagos de cupón por año para calcular el precio limpio del bono.
#
# Estas funciones son útiles para realizar cálculos financieros detallados relacionados con bonos, teniendo en cuenta los días transcurridos desde el último pago de cupón. Esto es esencial para determinar precios precisos tanto limpios como sucios en mercados financieros.
