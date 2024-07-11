## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#
#' @title Amortization Schedule Function
#' @description Creates an amortization schedule given a principal amount, interest rate, and number of periods.
#' @param principal The principal amount (initial loan amount).
#' @param rate The interest rate per period.
#' @param nper The number of periods (loan term).
#' @return A data frame with columns: period, principal_paid, interest_paid, and balance.
#' @examples
#' # Example 1: Amortization schedule for a loan of $100,000 with a 5% annual interest rate over 20 periods
#' amortization_schedule(100000, 0.05, 20)
#'
#' # Example 2: Amortization schedule for a loan of $50,000 with a 3% annual interest rate over 15 periods
# amortization_schedule(50000, 0.03, 15)
#' @export
amortization_schedule <- function(principal, rate, nper) {
  pmt <- principal * rate / (1 - (1 + rate)^-nper)
  schedule <- data.frame(
    period = 1:nper,
    principal_paid = numeric(nper),
    interest_paid = numeric(nper),
    balance = numeric(nper)
  )

  balance <- principal
  for (i in 1:nper) {
    interest_paid <- balance * rate
    principal_paid <- pmt - interest_paid
    balance <- balance - principal_paid
    schedule[i, 2:4] <- c(principal_paid, interest_paid, balance)
  }

  # Format numbers with commas for thousands and disable scientific notation
  options(scipen = 999)  # Disable scientific notation
  format(schedule, big.mark = ",", scientific = FALSE, digits = 2)
}

# Explicación en español:
# Esta función `amortization_schedule` crea un cronograma de amortización para un préstamo, dado un monto principal,
# una tasa de interés y un número de periodos. La función calcula el pago mensual (pmt), el interés pagado y el principal
# pagado en cada periodo, y luego actualiza el saldo pendiente.
#
# Parámetros:
# - `principal`: El monto principal del préstamo.
# - `rate`: La tasa de interés por periodo.
# - `nper`: El número de periodos del préstamo.
#
# Salida:
# - Un marco de datos con las columnas: `period`, `principal_paid`, `interest_paid` y `balance`.
#
# Ejemplos Aplicados:
# 1. Cronograma de amortización para un préstamo de $100,000 con una tasa de interés anual del 5% durante 20 periodos.
#    amortization_schedule(100000, 0.05, 20)
#
# 2. Cronograma de amortización para un préstamo de $50,000 con una tasa de interés anual del 3% durante 15 periodos.
#    amortization_schedule(50000, 0.03, 15)
