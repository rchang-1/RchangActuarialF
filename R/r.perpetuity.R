## Dr. Roberto Chang López  rchang@unah.edu.hn / rchang@unitec.edu
#' Profesor de Doctorado y Maestría en Sistemas, Economía y Estadística para la Investigación Científica
#'
#' @title Rate of Return for a Perpetuity
#' @description Calculates the rate of return for a perpetuity.
#' @param pmt Payment per period.
#' @param pv Present value.
#' @return The rate of return.
#' @examples
#' # Example usage:
# r.perpetuity(pmt=4.5, pv=-75)
#' @export

r.perpetuity <- function(pmt, pv) {
  -pmt / pv
}

# Explicación en español:
# Esta función `r.perpetuity` calcula la tasa de retorno para una perpetuidad.
#
# Parámetros:
# - `pmt`: Pago por periodo.
# - `pv`: Valor presente.
#
# Salida:
# - La tasa de retorno.
#
# Ejemplos Aplicados:
# 1. Calcular la tasa de retorno para una perpetuidad con un pago de $4.5 por periodo y un valor presente de -$75.
#    r.perpetuity(pmt=4.5, pv=-75)
