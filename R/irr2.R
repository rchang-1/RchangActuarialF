#' ## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' Computing IRR, the Internal Rate of Return
#'
#' @title Internal Rate of Return (IRR)
#' @description This function calculates the internal rate of return (IRR) for cash flows, including negative values.
#'
#' @param cf Cash flows. The first cash flow is the initial outlay (negative value).
#' @param cutoff Threshold to consider NPV as zero.
#' @param from Smallest IRR to try.
#' @param to Largest IRR to try.
#' @param step Increment of the IRR.
#'
#' @return Internal rate of return (IRR).
#'
#' @seealso irr
#'
#' @examples
#' # Example usage:
#' irr2(cf = c(-5, 1.6, 2.4, 2.8))
# irr2(cf = c(-200, 50, 60, -70, 30, 20))
#'
#' @export
irr2 <- function(cf, cutoff = 0.1, from = -1, to = 10, step = 1e-06) {
  irr_result <- NA
  for (irr_try in seq(from, to, by = step)) {
    npv <- sum(cf / (1 + irr_try)^(1:length(cf)))
    if (!is.na(npv) && abs(npv) < cutoff) {
      irr_result <- irr_try
      break
    }
  }
  if (is.na(irr_result)) {
    warning("Unable to find a suitable IRR within the given range and step size.")
  }
  return(irr_result)
}

# Explicación en español:
# Esta función `irr2` calcula la tasa interna de retorno (IRR) para flujos de efectivo, incluyendo valores negativos.
#
# Parámetros:
# - `cf`: Flujos de efectivo. El primer flujo de efectivo es la inversión inicial (valor negativo).
# - `cutoff`: Umbral para considerar el valor presente neto (NPV) como cero.
# - `from`: Menor IRR a probar.
# - `to`: Mayor IRR a probar.
# - `step`: Incremento del IRR.
#
# Retorno:
# Tasa interna de retorno (IRR).
#
# Ejemplos:
# 1. Calcular el IRR con cf = c(-5, 1.6, 2.4, 2.8):
#    irr2(cf = c(-5, 1.6, 2.4, 2.8))
# 2. Calcular el IRR con cf = c(-200, 50, 60, -70, 30, 20):
#    irr2(cf = c(-200, 50, 60, -70, 30, 20))
